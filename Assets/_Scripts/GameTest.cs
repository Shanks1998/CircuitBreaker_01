using UnityEngine;

public class GameTest : MonoBehaviour
{

    public bool IsGamePaused;

    public GameObject PlayerGo;

    public GameObject EnemyGo;

    public GameObject ViaGo;

    void Start()

    {

        PauseGame();

        PlayerGo.SetActive(false);

        EnemyGo.SetActive(false);

        ViaGo.SetActive(false);

    }

    void Update()

    {

        if (Input.GetKey(KeyCode.Escape))

        {

            PauseGame();

        }


    }


    void OnGUI()

    {

        if (!IsGamePaused)

            return;


        GUILayout.BeginArea(new Rect((Screen.width - 100) / 2, (Screen.height - 200) / 2, 100, 200));


        GUILayout.BeginVertical();

        if (IsGamePaused)

        {

            if (GUILayout.Button("PLAY", GUILayout.Height(50)))

            {

                StartGame();

            }

        }

        if (GUILayout.Button("END", GUILayout.Height(50)))

        {

            Application.Quit();

        }


        GUILayout.EndVertical();

        GUILayout.EndArea();

    }

    void StartGame()

    {

        IsGamePaused = false;

        Time.timeScale = 1;

        PlayerGo.SetActive(true);

        EnemyGo.SetActive(true);

        ViaGo.SetActive(true);

    }

    void PauseGame()

    {

        IsGamePaused = true;

        Time.timeScale = 0;

    }

}