using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class IntegratedCircuit : MonoBehaviour
{
    public float distanceFromPlayer;
    public float health;
    public float invincibleTime = 0.2f;
    public float invincibility = 0.0f;
    public float moveTime = 0.5f;
    public float stopTime = 1.5f;
    public float timeToMove = 0.0f;
    public float timeToStop = 0.0f;
    public float randAngle = 0;

    // Use this for initialization
    void Start()
    {
        health = 4.0f;
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


        if (Time.time > timeToMove)
        {
            timeToStop = Time.time + moveTime;
            timeToMove = Time.time + stopTime;
            randAngle = Random.Range(0, 360);
        }


        if (distanceFromPlayer < 15)
        {
            float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
            float angle = Mathf.Atan(slope);
            float rotAngle = 90 - (angle * (180 / Mathf.PI));
            if (this.transform.position.x < findPlayer.transform.position.x)
                rotAngle = rotAngle + 180;
            this.transform.rotation = Quaternion.Euler(0, rotAngle, 0);
        }


        if (Time.time < timeToStop && distanceFromPlayer < 10)
        {
            float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
            float angle = Mathf.Atan(slope);
            Vector3 force = Vector3.zero;
            force.x = 150 * Mathf.Cos(angle);
            force.z = 150 * Mathf.Sin(angle);
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
        }

        else if (Time.time < timeToStop)
        {
            //if (this.transform.position.x < 0)
            //    randAngle = randAngle + 180;
            this.transform.rotation = Quaternion.Euler(0, randAngle, 0);

            Vector3 force = Vector3.zero;
            force.x = 150 * Mathf.Cos(randAngle);
            force.z = 150 * Mathf.Sin(randAngle);
            //if (this.transform.position.x < 0)
            //{
            //    force.x = Mathf.Abs(force.x) * -1;
            //    force.z = force.z * -1;
            //}

            //if (this.transform.position.z < 0 && this.transform.position.x > 0)
            //{
            //    force.z = Mathf.Abs(force.z) * -1;
            //}
            Rigidbody rb = this.GetComponent<Rigidbody>();
            rb.AddForce(-force);
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
            TakeDamage(2);
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
            TakeDamage(1);
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
            TakeDamage(2);
        }
    }

    IEnumerator Waiting()
    {
        print(Time.time);
        yield return new WaitForSecondsRealtime(1);
        print(Time.time);
    }

    public void TakeDamage(int damage)
    {
        health -= damage;
    }
}
