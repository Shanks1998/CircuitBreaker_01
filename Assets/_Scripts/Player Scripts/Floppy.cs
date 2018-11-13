using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Floppy : MonoBehaviour {

    private float rotate;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        //if ((Mathf.Abs(transform.position.x) > 18.5f) || (Mathf.Abs(transform.position.z) > 11f))
        //{
        //    Destroy(this.gameObject);
        //}
        rotate += 9;
        this.transform.rotation = Quaternion.Euler(0, rotate, 0);
    }

    void OnCollisionEnter(Collision coll)
    {

        GameObject collidedWith = coll.gameObject;

        if (collidedWith.tag == "Obstacle" || collidedWith.tag == "Wall") {
            Destroy(this.gameObject);
        }

    }
}
