using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoomTrigger_Script : MonoBehaviour {

    public int seed;
    public GameObject LEDPrefab;
    public GameObject integratedCircuitPrefab;
    public GameObject speakerPrefab;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        GameObject findPlayer = GameObject.FindGameObjectWithTag("Player");
        float distanceFromPlayer = Mathf.Sqrt(Mathf.Pow(this.transform.position.x - findPlayer.transform.position.x, 2) + Mathf.Pow(this.transform.position.z - findPlayer.transform.position.z, 2));
        if (distanceFromPlayer < 2)
        {
            
            switch (seed)
            {
                case 0:
                    GameObject LED1 = Instantiate<GameObject>(LEDPrefab);
                    Vector3 pos = new Vector3(-12.94f, 0.49f, 1.64f);
                    LED1.transform.position = pos;

                    GameObject LED2 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(9.19f, 0.49f, 7.37f);
                    LED2.transform.position = pos;

                    GameObject circuit1 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-6.87f, -0.714f, -6.43f);
                    circuit1.transform.position = pos;

                    GameObject circuit2 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-9.3f, -0.714f, 6.56f);
                    circuit2.transform.position = pos;

                    GameObject circuit3 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(14.22f, -0.714f, 4.47f);
                    circuit3.transform.position = pos;

                    break;
                case 1:
                    GameObject LED3 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-90.17f, 0.49f, -0.25f);
                    LED3.transform.position = pos;

                    GameObject LED4 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-89.71f, 0.49f, 9.57f);
                    LED4.transform.position = pos;

                    GameObject LED5 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-79.88f, 0.49f, 3f);
                    LED5.transform.position = pos;

                    GameObject LED6 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-77.32f, 0.49f, -6.55f);
                    LED6.transform.position = pos;

                    GameObject LED7 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-56.68f, 0.49f, 6.42f);
                    LED7.transform.position = pos;

                    GameObject LED8 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-43.98f, 0.49f, -4.97f);
                    LED8.transform.position = pos;

                    GameObject LED9 = Instantiate<GameObject>(LEDPrefab);
                    pos = new Vector3(-36.24f, 0.49f, 8.07f);
                    LED9.transform.position = pos;

                    GameObject circuit4 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-25.19f, -0.714f, 23.01f);
                    circuit4.transform.position = pos;

                    GameObject circuit5 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-32.14f, -0.714f, 29.73f);
                    circuit5.transform.position = pos;

                    GameObject circuit6 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-38.95f, -0.714f, 26.03f);
                    circuit6.transform.position = pos;

                    GameObject circuit7 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-45.63f, -0.714f, 19.89f);
                    circuit7.transform.position = pos;

                    GameObject circuit8 = Instantiate<GameObject>(integratedCircuitPrefab);
                    pos = new Vector3(-53.8f, -0.714f, 31.07f);
                    circuit8.transform.position = pos;

                    GameObject speaker = Instantiate<GameObject>(speakerPrefab);
                    pos = new Vector3(-89.4f, 0.1f, 29.2f);
                    speaker.transform.position = pos;

                    GameObject speaker1 = Instantiate<GameObject>(speakerPrefab);
                    pos = new Vector3(-50.4f, -0.1f, 1.5f);
                    speaker1.transform.position = pos;

                    GameObject speaker2 = Instantiate<GameObject>(speakerPrefab);
                    pos = new Vector3(-65.9f, -0.1f, 3.7f);
                    speaker2.transform.position = pos;

                    GameObject speaker3 = Instantiate<GameObject>(speakerPrefab);
                    pos = new Vector3(-57.7f, -0.1f, 24.5f);
                    speaker3.transform.position = pos;
                    break;
            }

            GameObject[] findVIAs = GameObject.FindGameObjectsWithTag("VIA");
            foreach (GameObject VIA in findVIAs)
            {
                VIA.GetComponent<VIA_Script>().reset();
            }

            Destroy(this.gameObject);
        }
    }
}
