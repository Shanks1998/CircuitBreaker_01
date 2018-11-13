using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        //if ((Mathf.Abs(transform.position.x) > 18.5f) || (Mathf.Abs(transform.position.z) > 11f))
        //{
        //    Destroy(this.gameObject);
        //}

    }

    void OnCollisionEnter(Collision coll)
    {

        GameObject collidedWith = coll.gameObject;

        if (collidedWith.tag == "Wall" || collidedWith.tag == "Obstacle")
        {
            Destroy(this.gameObject);
        }

    }
}
