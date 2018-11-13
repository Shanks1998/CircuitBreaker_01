using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CompactDisk : MonoBehaviour
{
    public int collisions;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnCollisionEnter(Collision coll)
    {

        GameObject collidedWith = coll.gameObject;

        if (collidedWith.tag == "Wall" || collidedWith.tag == "Obstacle" || collidedWith.tag == "Enemy")
        {
            FindObjectOfType<AudioManager>().Play("throw");
            collisions++;
        }

        if (collisions >= 6)
        {
            Destroy(this.gameObject);
        }
    }
}
