using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teleport_Script : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        float distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));
        if (distanceFromPlayer > 5)
        {
            Vector3 pos = this.transform.position;
            Destroy(this.gameObject);
            findPlayer.GetComponent<Player>().Teleport(pos);
        }
    }

    void OnCollisionEnter(Collision coll)
    {
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        Vector3 pos = this.transform.position;
        Destroy(this.gameObject);
        findPlayer.GetComponent<Player>().Teleport(pos);
    }

}
