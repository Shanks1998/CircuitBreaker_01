using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Controller : MonoBehaviour
{
    public float distanceFromPlayer;
    public float health;
    public float invincibleTime = 0.2f;
    public float invincibility = 0.0f;

    // Use this for initialization
    void Start()
    {
        health = 10;
        StartCoroutine(Waiting());
        //Cursor curse = new Cursor();
        //curse.Player.transform.position = curse.posP;
    }

    // Update is called once per frame
    void FixedUpdate()
    {

        if (health <= 0)
        {
            Destroy(this.gameObject);
        }

        Vector3 enemyPos = this.transform.position;
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));
        if (distanceFromPlayer < 20)
        {
            float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
            float angle = Mathf.Atan(slope);
            Vector3 force = Vector3.zero;
            force.x = 50 * Mathf.Cos(angle);
            force.z = 50 * Mathf.Sin(angle);
            if (this.transform.position.x < findPlayer.transform.position.x)
            {
                force.x = Mathf.Abs(force.x) * -1;
                force.z = force.z * -1;
            }

            if (this.transform.position.z < findPlayer.transform.position.z && this.transform.position.x > this.transform.position.x)
            {
                force.z = Mathf.Abs(force.z) * -1;
            }
            Rigidbody rb = this.GetComponent<Rigidbody>();
            rb.AddForce(-force);
            float rotAngle = 90 - (angle * (180 / Mathf.PI));
            if (this.transform.position.x < findPlayer.transform.position.x)
                rotAngle = rotAngle + 180;
            this.transform.rotation = Quaternion.Euler(0, rotAngle, 0);
        }
    }

    void OnCollisionEnter(Collision coll)
    {
        GameObject collidedWith = coll.gameObject;
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");

        if (collidedWith.tag == "Bullet" && Time.time > invincibility)
        {
            invincibility = Time.time + invincibleTime;
            Destroy(collidedWith);
            health -= 2;
        }
        else if (collidedWith.tag == "Floppy" && Time.time > invincibility)
        {
            invincibility = Time.time + invincibleTime;
            float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
            float angle = Mathf.Atan(slope);
            Vector3 force = Vector3.zero;
            force.x = 3000 * Mathf.Cos(angle);
            force.z = 3000 * Mathf.Sin(angle);
            if (this.transform.position.x < findPlayer.transform.position.x)
            {
                force.x = Mathf.Abs(force.x) * -1;
                force.z = force.z * -1;
            }

            Rigidbody rb = this.GetComponent<Rigidbody>();
            rb.AddForce(force);
            health -= 1;
        }
        if (collidedWith.tag == "Bullet" || collidedWith.tag == "Floppy")
            Destroy(collidedWith);
        //else if (collidedWith.tag == "CompactDisk" && Time.time > invincibility)
        //{
        //    invincibility = Time.time + invincibleTime;
        //    float slope = (collidedWith.transform.position.z - this.transform.position.z) / (collidedWith.transform.position.x - this.transform.position.x);
        //    float angle = Mathf.Atan(slope);
        //    Vector3 force = Vector3.zero;
        //    force.x = 2000 * Mathf.Cos(angle);
        //    force.z = 2000 * Mathf.Sin(angle);
        //    if (this.transform.position.x < collidedWith.transform.position.x)
        //    {
        //        force.x = Mathf.Abs(force.x) * -1;
        //        force.z = force.z * -1;
        //    }

        //    Rigidbody rb = this.GetComponent<Rigidbody>();
        //    rb.AddForce(force);
        //    health -= 2;
        //}
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "CompactDisk")
        {
            invincibility = Time.time + invincibleTime;
            float slope = (other.transform.position.z - this.transform.position.z) / (other.transform.position.x - this.transform.position.x);
            float angle = Mathf.Atan(slope);
            Vector3 force = Vector3.zero;
            force.x = 1000 * Mathf.Cos(angle);
            force.z = 1000 * Mathf.Sin(angle);
            if (this.transform.position.x < other.transform.position.x)
            {
                force.x = Mathf.Abs(force.x) * -1;
                force.z = force.z * -1;
            }

            Rigidbody rb = this.GetComponent<Rigidbody>();
            rb.AddForce(force);
            health -= 2;
        }
    }

    IEnumerator Waiting()
    {
        print(Time.time);
        yield return new WaitForSecondsRealtime(1);
        print(Time.time);
    }
}
