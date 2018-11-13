using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spark_Script : MonoBehaviour {

    public GameObject projectilePrefab;
    public float fireRate = 1.5f;
    public float cooldown = 0.0f;

    // Use this for initialization
    void Start () {
        cooldown = Time.time + fireRate;

    }

    // Update is called once per frame
    void Update () {

        if (Time.time > cooldown)
        {
            GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
            float distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));
            if (distanceFromPlayer < 1.5f)
            {

                GameObject projectile = Instantiate<GameObject>(projectilePrefab);

                projectile.transform.position = this.transform.position;

                float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
                float angle = Mathf.Atan(slope);

                Rigidbody rb = projectilePrefab.GetComponent<Rigidbody>();
                Vector3 force = Vector3.zero;
                force.x = 1000 * Mathf.Cos(angle);
                force.z = 1000 * Mathf.Sin(angle);
                if (this.transform.position.x < findPlayer.transform.position.x)
                {
                    force.x = Mathf.Abs(force.x) * -1;
                    force.z = force.z * -1;
                }

                rb.AddForce(-force);
            }
            Destroy(this.gameObject);
        }
	}
}
