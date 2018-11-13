using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Player : MonoBehaviour {
    public GameObject playerPrefab;
    public Rigidbody rb;
    public int health = 4;
    public float invincible = 0.0f;
    public float movementSpeed = 100;
    public float invincibleTime = 1.0f;
    public GameObject teleportPrefab;

    private bool canVIA;
    private float VIATime = 0.0f;

    // Use this for initialization
    void Start() {
        rb = this.GetComponent<Rigidbody>();
        Material mat = this.GetComponent<Material>();
        canVIA = true;
    }

    // Update is called once per frame
    void FixedUpdate() {

        GameObject findCursor = GameObject.FindGameObjectWithTag("Cursor");

        float slope = (findCursor.transform.position.z - this.transform.position.z) / (findCursor.transform.position.x - this.transform.position.x);
        float angle = Mathf.Atan(slope);
        float rotAngle = 90 - (angle * (180 / Mathf.PI));
        if (this.transform.position.x < findCursor.transform.position.x)
            rotAngle = rotAngle + 180;
        this.transform.rotation = Quaternion.Euler(0, rotAngle, 0);


        // Check if out of health
        if (health <= 0)
        {
            Destroy(findCursor.gameObject);
            Destroy(this.gameObject);
            Application.LoadLevel("GameOver");
        }


        // Movement
        if (Input.GetKey("w"))
        {
            Vector3 force = Vector3.zero;
            force.z = movementSpeed;
            rb.AddForce(force);
        }

        if (Input.GetKey("a"))
        {
            Vector3 force = Vector3.zero;
            force.x = -movementSpeed;
            rb.AddForce(force);
        }

        if (Input.GetKey("s"))
        {
            Vector3 force = Vector3.zero;
            force.z = -movementSpeed;
            rb.AddForce(force);
        }

        if (Input.GetKey("d"))
        {
            Vector3 force = Vector3.zero;
            force.x = movementSpeed;
            rb.AddForce(force);
        }


        // Teleport
        if (Input.GetMouseButtonDown(1))
        {
            GameObject teleport = Instantiate<GameObject>(teleportPrefab);
            teleport.transform.position = this.transform.position;
            Rigidbody rbT = teleport.GetComponent<Rigidbody>();

            if (Input.GetKey("w"))
            {
                Vector3 force = Vector3.zero;
                force.z = 10000;
                rbT.AddForce(force);
            }

            if (Input.GetKey("a"))
            {
                Vector3 force = Vector3.zero;
                force.x = -10000;
                rbT.AddForce(force);
            }

            if (Input.GetKey("s"))
            {
                Vector3 force = Vector3.zero;
                force.z = -10000;
                rbT.AddForce(force);
            }

            if (Input.GetKey("d"))
            {
                Vector3 force = Vector3.zero;
                force.x = 10000;
                rbT.AddForce(force);
            }
        }
    }

    void OnCollisionEnter(Collision coll)
    {
        GameObject collidedWith = coll.gameObject;
        if (collidedWith.tag == "Enemy" && Time.time > invincible)
        {
            invincible = Time.time + invincibleTime;
            TakeDamage(1);
        }

        else if (collidedWith.tag == "Enemy Bullet")
        {
            Destroy(collidedWith);
            if (Time.time > invincible)
            {
                invincible = Time.time + invincibleTime;
                TakeDamage(1);
            }
        }
    }

    public void TakeDamage(int damage)
    {
        health -= damage;
    }

    public void Teleport(Vector3 pos)
    {
        this.transform.position = pos;
    }

    public bool CanTeleportVIA()
    {
        if (Time.time > VIATime)
            canVIA = true;
        return canVIA;
    }

    public void tempDisableVIA()
    {
        canVIA = false;
        VIATime = Time.time + 0.5f;
    }
}
