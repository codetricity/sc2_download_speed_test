# SC2 Download Speed Test

## Background on reported problem

RICOH partner reporting inconsistent results of downloading
large video file

* SC2 with firmware 1.64
* SC2 is 30cm (less than 0.5m away) from Android device
* there is no barrier between the SC2 and the Android device (no case. no wall)
* out of multiple tests in 1 hour, SC2 download will fail in a few hours

## Oppkey test configuration Craig - 1

* uses Windows 10 computer for ease of testing
* [Intel Wireless-N 7260](https://ark.intel.com/content/www/us/en/ark/products/75174/intel-wirelessn-7260.html) USB adapter

### camera info

* firmware 1.64
* camera is plugged in

```
"manufacturer": "RICOH",
"model": "RICOH THETA SC2",
"serialNumber": "20001005",
"firmwareVersion": "01.64",
```

### test file info

* video file
* 1.2GB in size


```
{
  "name": "camera.listFiles",
  "results": {
    "entries": [
      {
        "name": "R0012311.MP4",
        "fileUrl": "http://192.168.1.1/files/thetasc26c21a247d9055838792badc5/100RICOH/R0012311.MP4",
        "size": 1227220343,
        "isProcessed": true,
        "previewUrl": "",
        "dateTimeZone": "2021:10:12 10:24:08-07:00",
        "lng": 0,
        "lat": 0,
        "width": 3840,
        "height": 1920,
        "_thumbSize": 9036,
        "_recordTime": 180
      }
    ],
```

## Results

| Overall Test # | download speed | Tests Series | # in Series | Note |
| 1 | 913kbps | 1 | 1 | all series 1 use windows computer, 1.2GB file |
| 2 | camera shut down | 1 | 2 | thermometer icon appeared on OLED |
| 3 | 869kbps | 2 | 1 | same equipment and file as series 1 |
| 4 |         | 2 | 2 | delay 10 seconds between automated tests |


## Series #1, test #1

* Average download is 913kbps

```
$ bash sc2_download.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1170M  100 1170M    0     0   869k      0  0:22:57  0:22:57 --:--:--  758k
```

## Series #1, test #2

* SC2 overheated
* thermometer icon displayed on OLED
* camera shutdown

![thermometer](docs/images/sc2_overheat_oct_10.png)

---

## Series 2: Restart Another Series of 5 Tests

### Series 2, test 1

941kbps

```
Start test 1
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1170M  100 1170M    0     0   941k      0  0:21:12  0:21:12 --:--:--  875k
completed test 1
```

### Sereis 2, test 2

waited 10 seconds before starting test 2