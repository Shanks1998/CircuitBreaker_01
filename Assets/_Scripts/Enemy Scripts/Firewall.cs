using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Firewall : MonoBehaviour
{

    public GameObject brickPrefab;
    public GameObject sparkPrefab;

    public float health = 100f;
    public float projectileSpeed;
    public float fireRate = 2.0f;
    public float cooldown = 0.0f;
    public float fireFIRE = 2.0f;
    public float coolFIRE = 0.0f;
    public float invincibleTime = 0.2f;
    public float invincibility = 0.0f;

    // Use this for initialization
    void Start()
    {
        projectileSpeed = 500;
    }

    // Update is called once per frame
    void Update()
    {
        if (health <= 0f)
        {

            GameObject[] findBricks = GameObject.FindGameObjectsWithTag("Enemy Bullet");

            foreach (GameObject brick in findBricks)
                Destroy(brick);
            Destroy(this.gameObject);

        }

        fireRate = (health / 100);
        if (health <= 20)
            fireRate = 0.15f;
        fireFIRE = fireRate * 2;

        if (Time.time > cooldown)
        {
            GameObject brick = Instantiate<GameObject>(brickPrefab);
            int brickPos = Random.Range(1, 10);
            Vector3 translatePos = this.transform.position;
            translatePos.y -= 2.8f;

            switch (brickPos)
            {
                case 1:
                    translatePos.x -= 15.07f;
                    break;

                case 2:
                    translatePos.x -= 11.35f;
                    break;

                case 3:
                    translatePos.x -= 7.56f;
                    break;

                case 4:
                    translatePos.x -= 3.83f;
                    break;

                case 5:
                    break;

                case 6:
                    translatePos.x += 3.83f;
                    break;

                case 7:
                    translatePos.x += 7.56f;
                    break;

                case 8:
                    translatePos.x += 11.35f;
                    break;

                case 9:
                    translatePos.x += 15.07f;
                    break;
            }

            brick.transform.position = translatePos;
            cooldown = Time.time + fireRate;
        }

        if (Time.time > coolFIRE && health < 50)
        {
            coolFIRE = Time.time + fireFIRE;

            float randX = Random.Range(-1696, 1696);
            randX = randX / 100;

            float randZ = Random.Range(1676, 176);
            randZ = randZ / 100 * -1;

            float yPos = -0.7f;

            Vector3 firePos = this.transform.position;
            firePos.x += randX;
            firePos.y = yPos;
            firePos.z += randZ;

            GameObject spark = Instantiate<GameObject>(sparkPrefab);
            spark.transform.position = firePos;
            coolFIRE = Time.time + fireFIRE;
        }

    }

    void OnCollisionEnter(Collision coll)
    {
        GameObject collidedWith = coll.gameObject;
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");

        if (collidedWith.tag == "Bullet" || collidedWith.tag == "Floppy")
            Destroy(collidedWith);

        if (collidedWith.tag == "Bullet" && Time.time > invincibility)
        {
            invincibility = Time.time + invincibleTime;
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
}