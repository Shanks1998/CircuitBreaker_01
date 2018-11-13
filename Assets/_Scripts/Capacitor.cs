using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Capacitor : MonoBehaviour {

    private float counter;
    private int blastForce;

	// Use this for initialization
	void Start () {
        counter = 0f;
        blastForce = 2000;
    }
	
	// Update is called once per frame
	void Update () {
        if (counter >= 3f)
        {

            GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
            float distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));


            if (distanceFromPlayer < 3)
            {
                float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
                float angle = Mathf.Atan(slope);
                Vector3 force = Vector3.zero;
                force.x = blastForce * Mathf.Cos(angle);
                force.z = blastForce * Mathf.Sin(angle);
                if (this.transform.position.x < findPlayer.transform.position.x)
                {
                    force.x = Mathf.Abs(force.x) * -1;
                    force.z = force.z * -1;
                }

                //if (this.transform.position.z < findPlayer.transform.position.z && this.transform.position.x > this.transform.position.x)
                //{
                //    force.z = Mathf.Abs(force.z) * -1;
                //}
                Rigidbody rb = findPlayer.GetComponent<Rigidbody>();
                rb.AddForce(-force);
                findPlayer.GetComponent<Player>().TakeDamage(2);
            }

            GameObject[] findEnemies = GameObject.FindGameObjectsWithTag("Enemy");

            foreach (GameObject findEnemy in findEnemies)
            {
                float distanceFromEnemy = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findEnemy.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findEnemy.transform.position.z, 2));
                if (distanceFromEnemy < 3)
                {
                    float slope = (findEnemy.transform.position.z - this.transform.position.z) / (findEnemy.transform.position.x - this.transform.position.x);
                    float angle = Mathf.Atan(slope);
                    Vector3 force = Vector3.zero;
                    force.x = blastForce * Mathf.Cos(angle);
                    force.z = blastForce * Mathf.Sin(angle);
                    if (this.transform.position.x < findEnemy.transform.position.x)
                    {
                        force.x = Mathf.Abs(force.x) * -1;
                        force.z = force.z * -1;
                    }

                    //if (this.transform.position.z < findEnemy.transform.position.z && this.transform.position.x > this.transform.position.x)
                    //{
                    //    force.z = Mathf.Abs(force.z) * -1;
                    //}

                    Rigidbody rb = findEnemy.GetComponent<Rigidbody>();
                    rb.AddForce(-force);

                    try
                    {
                        findEnemy.GetComponent<IntegratedCircuit>().TakeDamage(2);
                    }
                    catch (System.Exception e)
                    {
                    }

                    try
                    {
                        findEnemy.GetComponent<LED_Script>().TakeDamage(2);
                    }
                    catch (System.Exception e)
                    {
                    }
                }
            }

            Destroy(this.gameObject);
        }
    }

    void OnCollisionEnter(Collision coll)
    {                         

        GameObject collidedWith = coll.gameObject;


        if (collidedWith.tag == "Bullet" || collidedWith.tag == "Floppy")
        {
            Destroy(collidedWith);
            counter = counter + 1;
        }


        else if (collidedWith.tag == "Enemy Bullet")
        {
            Destroy(collidedWith);
            counter = counter + 0.5f;
        }


        else if (collidedWith.tag == "CompactDisk")
        {
            counter = counter + 0.5f;
        }

    }


}
