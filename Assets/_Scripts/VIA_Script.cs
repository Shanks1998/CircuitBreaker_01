using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VIA_Script : MonoBehaviour {

    public Material VIA_ON;
    public Material VIA_OFF;
    public Renderer thisMat;
    public bool active = false;
    public int direction;
    public float distanceFromPlayer;
    public bool pressingE;

    private float cooldown = 1.0f;
    private float readyTime = 0.0f;

    public int triggerCount;


    // Use this for initialization
    void Start () {
        thisMat = this.GetComponent<Renderer>();
        thisMat.material = VIA_OFF;
    }
	
	// Update is called once per frame
	void FixedUpdate () {

        pressingE = false;


        // Check for enemies
        GameObject[] findEnemies = GameObject.FindGameObjectsWithTag("Enemy");

        // Check if VIA is active
        if (active)
        {

            // Find distance from player
            distanceFromPlayer = getDistanceFromPlayer();

            // If player is close and presses 'e', then move player
            if (distanceFromPlayer < 1 && Input.GetKeyDown("e"))
            {
                pressingE = true;
                GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
                if(findPlayer.GetComponent<Player>().CanTeleportVIA())
                    movePlayer(direction);
            }
        }

        // Check if level is cleared
        if (findEnemies.Length <= triggerCount)
        {
            thisMat.material = VIA_ON;
            active = true;
        }
    }


    // Moves the player to the next room
    void movePlayer(int dir)
    {
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        GameObject findCamera = GameObject.FindGameObjectWithTag("MainCamera");

        Vector3 playerPos = findPlayer.transform.position;
        Vector3 newPos = playerPos;

        // NORTH
        if (dir == 1)
        {
            newPos.z = playerPos.z + 8.5f;
            findPlayer.transform.position = newPos;
        }

        // RIGHT VIA
        if (dir == 2)
        {
            newPos.x = playerPos.x + 8.5f;
            findPlayer.transform.position = newPos;
        }

        // SOUTH
        if (dir == 3)
        {
            newPos.z = playerPos.z - 8.5f;
            findPlayer.transform.position = newPos;
        }

        // LEFT VIA
        if (dir == 4)
        {
            newPos.x = playerPos.x - 8.5f;
            findPlayer.transform.position = newPos;
        }

        FindObjectOfType<AudioManager>().Play("Teleport");

        findPlayer.GetComponent<Player>().tempDisableVIA();
    }


    // Calculates the distance from this object to the player object
    float getDistanceFromPlayer()
    {
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));
        return distanceFromPlayer;
    }

    public void reset()
    {
        thisMat.material = VIA_OFF;
        active = false;
    }
}
