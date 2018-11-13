using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class LED_Script : MonoBehaviour
{
    public GameObject LEDBulletPrefab;
    public float distanceFromPlayer;
    public float health;
    public float invincibleTime = 0.2f;
    public float invincibility = 0.0f;
    public float movementSpeed = 75.0f;
    public bool playerVisible = false;
    public float projectileSpeed = 200000;
    public float fireRate = 1.0f;
    public float cooldown = 1.0f;

    // Use this for initialization
    void Start()
    {
        health = 5.0f;
    }

    // Update is called once per frame
    void FixedUpdate()
    {

        if (health <= 0)
        {
            Destroy(this.gameObject);
        }

        // Find distance from player
        Vector3 enemyPos = this.transform.position;
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));


        // Rotate LED
        float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
        float angle = Mathf.Atan(slope);
        float rotAngle = 90 - (angle * (180 / Mathf.PI));
        if (this.transform.position.x < findPlayer.transform.position.x)
            rotAngle = rotAngle + 180;
        this.transform.rotation = Quaternion.Euler(0, rotAngle, 0);


        // Move towards player if needed
        if (distanceFromPlayer > 7 && distanceFromPlayer < 22)
        {
            Vector3 force = Vector3.zero;
            force.x = movementSpeed * Mathf.Cos(angle);
            force.z = movementSpeed * Mathf.Sin(angle);
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

        //// Move away from other enemies if needed
        //GameObject findEnemy = GameObject.FindGameObjectWithTag("Enemy");
        //float distanceFromEnemy = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findEnemy.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findEnemy.transform.position.z, 2));

        //if (distanceFromEnemy < 3)
        //{
        //    Vector3 force = Vector3.zero;
        //    force.x = movementSpeed * Mathf.Cos(angle);
        //    force.z = movementSpeed * Mathf.Sin(angle);
        //    if (this.transform.position.x < findEnemy.transform.position.x)
        //    {
        //        force.x = Mathf.Abs(force.x) * -1;
        //        force.z = force.z * -1;
        //    }

        //    if (this.transform.position.z < findEnemy.transform.position.z && this.transform.position.x > this.transform.position.x)
        //    {
        //        force.z = Mathf.Abs(force.z) * -1;
        //    }
        //    Rigidbody rb = this.GetComponent<Rigidbody>();
        //    rb.AddForce(force);
        //}


        // Move away from player if needed
        if (distanceFromPlayer < 6.5)
        {
            Vector3 force = Vector3.zero;
            force.x = movementSpeed * Mathf.Cos(angle);
            force.z = movementSpeed * Mathf.Sin(angle);
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
            rb.AddForce(force);
        }


        // Fire bullet
        if (Time.time > cooldown && distanceFromPlayer < 22)
        {
            GameObject LEDBullet = Instantiate<GameObject>(LEDBulletPrefab);
            cooldown = Time.time + fireRate;

            // Note: Changing the value of this Vector3 doesn't change the location of the Player object
            Vector3 posP = this.transform.position;

            // By default the position of the Player is at the +Z center
            posP.y = posP.y - 0.5f;
            LEDBullet.transform.position = posP;
            float slope1 = (this.transform.position.z - findPlayer.transform.position.z) / (this.transform.position.x - findPlayer.transform.position.x);
            angle = Mathf.Atan(slope);

            float rotAngle1 = 90 - (angle * (180 / Mathf.PI));
            if (this.transform.position.x < this.transform.position.x)
                rotAngle = rotAngle + 180;
            LEDBullet.transform.rotation = Quaternion.Euler(0, rotAngle, 0);

            Rigidbody rb = LEDBullet.GetComponent<Rigidbody>();
            Vector3 force = Vector3.zero;
            force.x = projectileSpeed * Mathf.Cos(angle);
            force.z = projectileSpeed * Mathf.Sin(angle);
            if (this.transform.position.x < findPlayer.transform.position.x)
            {
                force.x = Mathf.Abs(force.x) * -1;
                force.z = force.z * -1;
            }

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
