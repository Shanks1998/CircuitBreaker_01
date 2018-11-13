using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.UI;

public class Cursor : MonoBehaviour {

    public GameObject floppyPrefab;
    public GameObject floppyPrefab1;
    public GameObject floppyPrefab2;
    public GameObject floppyPrefab3;
    public GameObject floppyPrefab4;
    public GameObject floppyPrefab5;

    public GameObject bulletPrefab;
    public GameObject playerPrefab;
    public GameObject cursorPrefab;
    public GameObject compactDiskPrefab;
    //public Vector3 posP;
    private Rigidbody rb;
    public int weapon = 0;
    public float projectileSpeed;
    public float fireRate = 0.6f;
    public float cooldown = 0.0f;
    private Plane _groundPlane;
    public Camera MainCamera;
    public Player Player;
    public static Vector3 hitPoint = new Vector3(0,0,0);

    // Use this for initialization
    void Start () {
        //Player.transform.Translate(40.45f, 0, 0);
    }

    // Update is called once per frame
    void Update () {

        //Vector3 mousePos2D = Input.mousePosition;                             

        // The Camera's z position sets how far to push the mouse into 3D

        //mousePos2D.z = -Camera.main.transform.position.z;

        // Convert the point from 2D screen space into 3D game world space

        MouseAim();
        Vector3 mousePos3D = hitPoint;

        // Move the x position of this Basket to the x position of the Mouse
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        Vector3 pos = findPlayer.transform.position;

        pos.x = mousePos3D.x;
        pos.z = mousePos3D.z;

        this.transform.position = pos;
        float angle;
        Vector3 force;

        if (Input.GetKeyDown("space")) {
            if (weapon == 1)
            {
                weapon = 0;
                fireRate = 0.6f;
            }

            else if (weapon == 0)
            {
                weapon = 2;
                fireRate = 0.7f;
            }

            else if (weapon == 2)
            {
                weapon = 1;
                fireRate = 0.2f;
            }
        }

        if (Input.GetMouseButton(0)) {
            if (weapon == 2 && Time.time > cooldown)
            {
                GameObject compactDisk = Instantiate<GameObject>(compactDiskPrefab);
                cooldown = Time.time + fireRate;

                // Note: Changing the value of this Vector3 doesn't change the location of the Player object
                Vector3 posP = findPlayer.transform.position;

                // By default the position of the Player is at the +Z center
                posP.y = posP.y - 0.5f;
                compactDisk.transform.position = posP;
                float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
                angle = Mathf.Atan(slope);

                float rotAngle = 90 - (angle * (180 / Mathf.PI));
                if (this.transform.position.x < findPlayer.transform.position.x)
                    rotAngle = rotAngle + 180;
                compactDisk.transform.rotation = Quaternion.Euler(0, rotAngle, 0);

                rb = compactDisk.GetComponent<Rigidbody>();
                projectileSpeed = 20;
                force = Vector3.zero;
                force.x = projectileSpeed * Mathf.Cos(angle);
                force.z = projectileSpeed * Mathf.Sin(angle);
                if (this.transform.position.x < findPlayer.transform.position.x)
                {
                    force.x = Mathf.Abs(force.x) * -1;
                    force.z = force.z * -1;
                }

                rb.AddForce(force);
            }

            if (weapon == 1 && Time.time > cooldown) {
                GameObject bullet = Instantiate<GameObject>(bulletPrefab);
                cooldown = Time.time + fireRate;

                // Note: Changing the value of this Vector3 doesn't change the location of the Player object
                Vector3 posP = findPlayer.transform.position;

                // By default the position of the Player is at the +Z center
                posP.y = posP.y - 0.5f;
                bullet.transform.position = posP;
                float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
                angle = Mathf.Atan(slope);

                float rotAngle = 90 - (angle * (180 / Mathf.PI));
                if (this.transform.position.x < findPlayer.transform.position.x)
                    rotAngle = rotAngle + 180;
                bullet.transform.rotation = Quaternion.Euler(0, rotAngle, 0);

                rb = bullet.GetComponent<Rigidbody>();
                projectileSpeed = 1000;
                force = Vector3.zero;
                force.x = projectileSpeed * Mathf.Cos(angle);
                force.z = projectileSpeed * Mathf.Sin(angle);
                if (this.transform.position.x < findPlayer.transform.position.x)
                {
                    force.x = Mathf.Abs(force.x) * -1;
                    force.z = force.z * -1;
                }

                rb.AddForce(force);
            }

            else if (weapon == 0 && Time.time > cooldown) {
                int flop = Random.Range(1, 7);

                GameObject floppy = null;

                switch (flop)
                {
                    case 1:
                        floppy = Instantiate<GameObject>(floppyPrefab);
                        break;

                    case 2:
                        floppy = Instantiate<GameObject>(floppyPrefab1);
                        break;

                    case 3:
                        floppy = Instantiate<GameObject>(floppyPrefab2);
                        break;

                    case 4:
                        floppy = Instantiate<GameObject>(floppyPrefab3);
                        break;

                    case 5:
                        floppy = Instantiate<GameObject>(floppyPrefab4);
                        break;

                    case 6:
                        floppy = Instantiate<GameObject>(floppyPrefab5);
                        break;
                }

                cooldown = Time.time + fireRate;

                // Note: Changing the value of this Vector3 doesn't change the location of the Player object
                Vector3 posP = findPlayer.transform.position;

                // By default the position of the Player is at the +Z center
                //posP.z = posP.z - 0.5f;
                posP.y = posP.y - 0.5f;
                floppy.transform.position = posP;
                float slope = (findPlayer.transform.position.z - this.transform.position.z) / (findPlayer.transform.position.x - this.transform.position.x);
                angle = Mathf.Atan(slope);

                float rotAngle = angle * (180 / Mathf.PI);
                //floppy.transform.rotation = Quaternion.Euler(0, angle, 0);

                rb = floppy.GetComponent<Rigidbody>();
                projectileSpeed = 1100;
                force = Vector3.zero;
                force.x = projectileSpeed * Mathf.Cos(angle);
                force.z = projectileSpeed * Mathf.Sin(angle);
                if (this.transform.position.x < findPlayer.transform.position.x)
                {
                    force.x = Mathf.Abs(force.x) * -1;
                    force.z = force.z * -1;
                }

                rb.AddForce(force);
            }
            
        }

    }

    private void MouseAim()
    {
        
        Ray screenRay = MainCamera.ScreenPointToRay(Input.mousePosition);
        float intersection = 0.0f;

        // Set the raycast plane to the position of the player facing up
        _groundPlane.SetNormalAndPosition(Vector3.up, Player.transform.position);

        // Perform a raycast to track the intersection distance of the ray
        if (_groundPlane.Raycast(screenRay, out intersection))
        {
            // Calculate the hit point on the plane and set the look at of the character transform
            hitPoint = screenRay.GetPoint(intersection);

            //this.transform.LookAt(hitPoint);  
        }
    }
}
