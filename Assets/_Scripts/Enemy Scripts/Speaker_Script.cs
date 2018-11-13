using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Speaker_Script : MonoBehaviour {

    public float health;
    public float distanceFromPlayer;
    public float movementSpeed = 0;
    public float invincibleTime = 0.2f;
    public float invincibility = 0.0f;
    public float blastForce = 3000.0f;
    float countdown = 0.0f;
    bool canMove;

    // Use this for initialization
    void Start () {
        health = 12.0f;
        canMove = true;
        movementSpeed = 50;
	}
	
	// Update is called once per frame
	void Update () {

        // Destroy if health is depleted
        if (health <= 0)
        {
            Destroy(this.gameObject);
        }


        // Find distance from player
        Vector3 enemyPos = this.transform.position;
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));


        // Rotate Speaker
        float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
        float angle = Mathf.Atan(slope);
        float rotAngle = 90 - (angle * (180 / Mathf.PI));
        if (this.transform.position.x < findPlayer.transform.position.x)
            rotAngle = rotAngle + 180;
        this.transform.rotation = Quaternion.Euler(0, rotAngle + 180, 0);


        // Move towards player
        if (distanceFromPlayer < 15)
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


        if (distanceFromPlayer < 3 && canMove)
        {
            canMove = false;
            countdown = Time.time + 1.5f;
            movementSpeed = 20;
        }

        if (Time.time > countdown && !canMove) {
            if (distanceFromPlayer < 3)
            {
                slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
                angle = Mathf.Atan(slope);
                Vector3 force = Vector3.zero;
                force.x = blastForce * Mathf.Cos(angle);
                force.z = blastForce * Mathf.Sin(angle);

                if (this.transform.position.x < findPlayer.transform.position.x)
                {
                    force.x = Mathf.Abs(force.x) * -1;
                    force.z = force.z * -1;
                }

                Rigidbody rb = findPlayer.GetComponent<Rigidbody>();
                rb.AddForce(-force);
                findPlayer.GetComponent<Player>().TakeDamage(2);
            }
            canMove = true;
            movementSpeed = 50;
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


