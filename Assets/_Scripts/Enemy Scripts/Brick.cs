using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Brick : MonoBehaviour {

    public float projectileSpeed;
    // Use this for initialization
    void Start () {
        projectileSpeed = 100;
    }
	
	// Update is called once per frame
	void Update () {
        Rigidbody rb = this.GetComponent<Rigidbody>();

        Vector3 force = Vector3.zero;
        force.z = -projectileSpeed;

        rb.AddForce(force);
    }
}
