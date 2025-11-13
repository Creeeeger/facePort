.class public Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;
    }
.end annotation


# static fields
.field private static BD_ROTATE_LEFT:[Ljava/lang/String;

.field private static BD_ROTATE_RIGHT:[Ljava/lang/String;

.field public static final DEBUG:Z

.field private static mDexQuickPannelOn:Z

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

.field private static mQuickPannelOn:Z


# direct methods
.method public static synthetic $r8$lambda$CPOCsyRGV5_yWvYf5F5MUdC-bSo(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->lambda$isBtCastConnectedAsGuest$1(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UyNr0XMss0iuDepn1VXL_sd2xqA(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->lambda$isBtCastConnectedAsGuest$0(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X_dcXJY9Nqg80dhVaJRWLLhJPGo(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->lambda$isBtCastConnectedAsGuest$2(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ioH-oFQk97yFUJhhXLZLx8ae1uw(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->lambda$isBtCastConnectedAsHost$3(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o8FNyMWra5lwA8tjaDX_2L5optw(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->lambda$isBtCastConnectedAsHost$5(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$stD-4IBWE4vkZbFy0SNSLUfl-sk(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->lambda$isBtCastConnectedAsHost$4(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 25

    .line 107
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "00"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "02"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "04"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "06"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "08"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "0A"

    aput-object v13, v1, v12

    const/4 v14, 0x6

    const-string v15, "0C"

    aput-object v15, v1, v14

    const/16 v16, 0x7

    const-string v17, "0E"

    aput-object v17, v1, v16

    const/16 v18, 0x8

    const-string v19, "10"

    aput-object v19, v1, v18

    const/16 v20, 0x9

    const-string v21, "12"

    aput-object v21, v1, v20

    const-string v22, "14"

    const/16 v23, 0xa

    aput-object v22, v1, v23

    const/16 v22, 0xb

    const-string v24, "16"

    aput-object v24, v1, v22

    const/16 v22, 0xc

    const-string v24, "18"

    aput-object v24, v1, v22

    const/16 v22, 0xd

    const-string v24, "1A"

    aput-object v24, v1, v22

    const/16 v22, 0xe

    const-string v24, "1C"

    aput-object v24, v1, v22

    const/16 v22, 0xf

    const-string v24, "1E"

    aput-object v24, v1, v22

    const/16 v22, 0x10

    const-string v24, "20"

    aput-object v24, v1, v22

    const/16 v22, 0x11

    const-string v24, "22"

    aput-object v24, v1, v22

    const/16 v22, 0x12

    const-string v24, "24"

    aput-object v24, v1, v22

    const/16 v22, 0x13

    const-string v24, "26"

    aput-object v24, v1, v22

    const/16 v22, 0x14

    const-string v24, "28"

    aput-object v24, v1, v22

    const/16 v22, 0x15

    const-string v24, "2A"

    aput-object v24, v1, v22

    const/16 v22, 0x16

    const-string v24, "2C"

    aput-object v24, v1, v22

    const/16 v22, 0x17

    const-string v24, "2E"

    aput-object v24, v1, v22

    const/16 v22, 0x18

    const-string v24, "30"

    aput-object v24, v1, v22

    const/16 v22, 0x19

    const-string v24, "32"

    aput-object v24, v1, v22

    const/16 v22, 0x1a

    const-string v24, "34"

    aput-object v24, v1, v22

    const/16 v22, 0x1b

    const-string v24, "36"

    aput-object v24, v1, v22

    const/16 v22, 0x1c

    const-string v24, "38"

    aput-object v24, v1, v22

    const/16 v22, 0x1d

    const-string v24, "3A"

    aput-object v24, v1, v22

    const/16 v22, 0x1e

    const-string v24, "3C"

    aput-object v24, v1, v22

    const/16 v22, 0x1f

    const-string v24, "3E"

    aput-object v24, v1, v22

    const/16 v22, 0x20

    const-string v24, "40"

    aput-object v24, v1, v22

    const/16 v22, 0x21

    const-string v24, "42"

    aput-object v24, v1, v22

    const/16 v22, 0x22

    const-string v24, "44"

    aput-object v24, v1, v22

    const/16 v22, 0x23

    const-string v24, "46"

    aput-object v24, v1, v22

    const/16 v22, 0x24

    const-string v24, "48"

    aput-object v24, v1, v22

    const/16 v22, 0x25

    const-string v24, "4A"

    aput-object v24, v1, v22

    const/16 v22, 0x26

    const-string v24, "4C"

    aput-object v24, v1, v22

    const/16 v22, 0x27

    const-string v24, "4E"

    aput-object v24, v1, v22

    const/16 v22, 0x28

    const-string v24, "50"

    aput-object v24, v1, v22

    const/16 v22, 0x29

    const-string v24, "52"

    aput-object v24, v1, v22

    const/16 v22, 0x2a

    const-string v24, "54"

    aput-object v24, v1, v22

    const/16 v22, 0x2b

    const-string v24, "56"

    aput-object v24, v1, v22

    const/16 v22, 0x2c

    const-string v24, "58"

    aput-object v24, v1, v22

    const/16 v22, 0x2d

    const-string v24, "5A"

    aput-object v24, v1, v22

    const/16 v22, 0x2e

    const-string v24, "5C"

    aput-object v24, v1, v22

    const/16 v22, 0x2f

    const-string v24, "5E"

    aput-object v24, v1, v22

    const/16 v22, 0x30

    const-string v24, "60"

    aput-object v24, v1, v22

    const/16 v22, 0x31

    const-string v24, "62"

    aput-object v24, v1, v22

    const/16 v22, 0x32

    const-string v24, "64"

    aput-object v24, v1, v22

    const/16 v22, 0x33

    const-string v24, "66"

    aput-object v24, v1, v22

    const/16 v22, 0x34

    const-string v24, "68"

    aput-object v24, v1, v22

    const/16 v22, 0x35

    const-string v24, "6A"

    aput-object v24, v1, v22

    const/16 v22, 0x36

    const-string v24, "6C"

    aput-object v24, v1, v22

    const/16 v22, 0x37

    const-string v24, "6E"

    aput-object v24, v1, v22

    const/16 v22, 0x38

    const-string v24, "70"

    aput-object v24, v1, v22

    const/16 v22, 0x39

    const-string v24, "72"

    aput-object v24, v1, v22

    const/16 v22, 0x3a

    const-string v24, "74"

    aput-object v24, v1, v22

    const/16 v22, 0x3b

    const-string v24, "76"

    aput-object v24, v1, v22

    const/16 v22, 0x3c

    const-string v24, "78"

    aput-object v24, v1, v22

    const/16 v22, 0x3d

    const-string v24, "7A"

    aput-object v24, v1, v22

    const/16 v22, 0x3e

    const-string v24, "7C"

    aput-object v24, v1, v22

    const/16 v22, 0x3f

    const-string v24, "7E"

    aput-object v24, v1, v22

    const/16 v22, 0x40

    const-string v24, "80"

    aput-object v24, v1, v22

    const/16 v22, 0x41

    const-string v24, "82"

    aput-object v24, v1, v22

    const/16 v22, 0x42

    const-string v24, "84"

    aput-object v24, v1, v22

    const/16 v22, 0x43

    const-string v24, "86"

    aput-object v24, v1, v22

    const/16 v22, 0x44

    const-string v24, "88"

    aput-object v24, v1, v22

    const/16 v22, 0x45

    const-string v24, "8A"

    aput-object v24, v1, v22

    const/16 v22, 0x46

    const-string v24, "8C"

    aput-object v24, v1, v22

    const/16 v22, 0x47

    const-string v24, "8E"

    aput-object v24, v1, v22

    const/16 v22, 0x48

    const-string v24, "90"

    aput-object v24, v1, v22

    const/16 v22, 0x49

    const-string v24, "92"

    aput-object v24, v1, v22

    const/16 v22, 0x4a

    const-string v24, "94"

    aput-object v24, v1, v22

    const/16 v22, 0x4b

    const-string v24, "96"

    aput-object v24, v1, v22

    const/16 v22, 0x4c

    const-string v24, "98"

    aput-object v24, v1, v22

    const/16 v22, 0x4d

    const-string v24, "9A"

    aput-object v24, v1, v22

    const/16 v22, 0x4e

    const-string v24, "9C"

    aput-object v24, v1, v22

    const/16 v22, 0x4f

    const-string v24, "9E"

    aput-object v24, v1, v22

    const/16 v22, 0x50

    const-string v24, "A0"

    aput-object v24, v1, v22

    const/16 v22, 0x51

    const-string v24, "A2"

    aput-object v24, v1, v22

    const/16 v22, 0x52

    const-string v24, "A4"

    aput-object v24, v1, v22

    const/16 v22, 0x53

    const-string v24, "A6"

    aput-object v24, v1, v22

    const/16 v22, 0x54

    const-string v24, "A8"

    aput-object v24, v1, v22

    const/16 v22, 0x55

    const-string v24, "AA"

    aput-object v24, v1, v22

    const/16 v22, 0x56

    const-string v24, "AC"

    aput-object v24, v1, v22

    const/16 v22, 0x57

    const-string v24, "AE"

    aput-object v24, v1, v22

    const/16 v22, 0x58

    const-string v24, "B0"

    aput-object v24, v1, v22

    const/16 v22, 0x59

    const-string v24, "B2"

    aput-object v24, v1, v22

    const/16 v22, 0x5a

    const-string v24, "B4"

    aput-object v24, v1, v22

    const/16 v22, 0x5b

    const-string v24, "B6"

    aput-object v24, v1, v22

    const/16 v22, 0x5c

    const-string v24, "B8"

    aput-object v24, v1, v22

    const/16 v22, 0x5d

    const-string v24, "BA"

    aput-object v24, v1, v22

    const/16 v22, 0x5e

    const-string v24, "BC"

    aput-object v24, v1, v22

    const/16 v22, 0x5f

    const-string v24, "BE"

    aput-object v24, v1, v22

    const/16 v22, 0x60

    const-string v24, "C0"

    aput-object v24, v1, v22

    const/16 v22, 0x61

    const-string v24, "C2"

    aput-object v24, v1, v22

    const/16 v22, 0x62

    const-string v24, "C4"

    aput-object v24, v1, v22

    const/16 v22, 0x63

    const-string v24, "C6"

    aput-object v24, v1, v22

    const/16 v22, 0x64

    const-string v24, "C8"

    aput-object v24, v1, v22

    const/16 v22, 0x65

    const-string v24, "CA"

    aput-object v24, v1, v22

    const/16 v22, 0x66

    const-string v24, "CC"

    aput-object v24, v1, v22

    const/16 v22, 0x67

    const-string v24, "CE"

    aput-object v24, v1, v22

    const/16 v22, 0x68

    const-string v24, "D0"

    aput-object v24, v1, v22

    const/16 v22, 0x69

    const-string v24, "D2"

    aput-object v24, v1, v22

    const/16 v22, 0x6a

    const-string v24, "D4"

    aput-object v24, v1, v22

    const/16 v22, 0x6b

    const-string v24, "D6"

    aput-object v24, v1, v22

    const/16 v22, 0x6c

    const-string v24, "D8"

    aput-object v24, v1, v22

    const/16 v22, 0x6d

    const-string v24, "DA"

    aput-object v24, v1, v22

    const/16 v22, 0x6e

    const-string v24, "DC"

    aput-object v24, v1, v22

    const/16 v22, 0x6f

    const-string v24, "DE"

    aput-object v24, v1, v22

    const/16 v22, 0x70

    const-string v24, "E0"

    aput-object v24, v1, v22

    const/16 v22, 0x71

    const-string v24, "E2"

    aput-object v24, v1, v22

    const/16 v22, 0x72

    const-string v24, "E4"

    aput-object v24, v1, v22

    const/16 v22, 0x73

    const-string v24, "E6"

    aput-object v24, v1, v22

    const/16 v22, 0x74

    const-string v24, "E8"

    aput-object v24, v1, v22

    const/16 v22, 0x75

    const-string v24, "EA"

    aput-object v24, v1, v22

    const/16 v22, 0x76

    const-string v24, "EC"

    aput-object v24, v1, v22

    const/16 v22, 0x77

    const-string v24, "EE"

    aput-object v24, v1, v22

    const/16 v22, 0x78

    const-string v24, "F0"

    aput-object v24, v1, v22

    const/16 v22, 0x79

    const-string v24, "F2"

    aput-object v24, v1, v22

    const/16 v22, 0x7a

    const-string v24, "F4"

    aput-object v24, v1, v22

    const/16 v22, 0x7b

    const-string v24, "F6"

    aput-object v24, v1, v22

    const/16 v22, 0x7c

    const-string v24, "F8"

    aput-object v24, v1, v22

    const/16 v22, 0x7d

    const-string v24, "FA"

    aput-object v24, v1, v22

    const/16 v22, 0x7e

    const-string v24, "FC"

    aput-object v24, v1, v22

    const/16 v22, 0x7f

    const-string v24, "FE"

    aput-object v24, v1, v22

    const/16 v22, 0x80

    const-string v24, "01"

    aput-object v24, v1, v22

    const/16 v22, 0x81

    const-string v24, "03"

    aput-object v24, v1, v22

    const/16 v22, 0x82

    const-string v24, "05"

    aput-object v24, v1, v22

    const/16 v22, 0x83

    const-string v24, "07"

    aput-object v24, v1, v22

    const/16 v22, 0x84

    const-string v24, "09"

    aput-object v24, v1, v22

    const/16 v22, 0x85

    const-string v24, "0B"

    aput-object v24, v1, v22

    const/16 v22, 0x86

    const-string v24, "0D"

    aput-object v24, v1, v22

    const/16 v22, 0x87

    const-string v24, "0F"

    aput-object v24, v1, v22

    const/16 v22, 0x88

    const-string v24, "11"

    aput-object v24, v1, v22

    const/16 v22, 0x89

    const-string v24, "13"

    aput-object v24, v1, v22

    const/16 v22, 0x8a

    const-string v24, "15"

    aput-object v24, v1, v22

    const/16 v22, 0x8b

    const-string v24, "17"

    aput-object v24, v1, v22

    const/16 v22, 0x8c

    const-string v24, "19"

    aput-object v24, v1, v22

    const/16 v22, 0x8d

    const-string v24, "1B"

    aput-object v24, v1, v22

    const/16 v22, 0x8e

    const-string v24, "1D"

    aput-object v24, v1, v22

    const/16 v22, 0x8f

    const-string v24, "1F"

    aput-object v24, v1, v22

    const/16 v22, 0x90

    const-string v24, "21"

    aput-object v24, v1, v22

    const/16 v22, 0x91

    const-string v24, "23"

    aput-object v24, v1, v22

    const/16 v22, 0x92

    const-string v24, "25"

    aput-object v24, v1, v22

    const/16 v22, 0x93

    const-string v24, "27"

    aput-object v24, v1, v22

    const/16 v22, 0x94

    const-string v24, "29"

    aput-object v24, v1, v22

    const/16 v22, 0x95

    const-string v24, "2B"

    aput-object v24, v1, v22

    const/16 v22, 0x96

    const-string v24, "2D"

    aput-object v24, v1, v22

    const/16 v22, 0x97

    const-string v24, "2F"

    aput-object v24, v1, v22

    const/16 v22, 0x98

    const-string v24, "31"

    aput-object v24, v1, v22

    const/16 v22, 0x99

    const-string v24, "33"

    aput-object v24, v1, v22

    const/16 v22, 0x9a

    const-string v24, "35"

    aput-object v24, v1, v22

    const/16 v22, 0x9b

    const-string v24, "37"

    aput-object v24, v1, v22

    const/16 v22, 0x9c

    const-string v24, "39"

    aput-object v24, v1, v22

    const/16 v22, 0x9d

    const-string v24, "3B"

    aput-object v24, v1, v22

    const/16 v22, 0x9e

    const-string v24, "3D"

    aput-object v24, v1, v22

    const/16 v22, 0x9f

    const-string v24, "3F"

    aput-object v24, v1, v22

    const/16 v22, 0xa0

    const-string v24, "41"

    aput-object v24, v1, v22

    const/16 v22, 0xa1

    const-string v24, "43"

    aput-object v24, v1, v22

    const/16 v22, 0xa2

    const-string v24, "45"

    aput-object v24, v1, v22

    const/16 v22, 0xa3

    const-string v24, "47"

    aput-object v24, v1, v22

    const/16 v22, 0xa4

    const-string v24, "49"

    aput-object v24, v1, v22

    const/16 v22, 0xa5

    const-string v24, "4B"

    aput-object v24, v1, v22

    const/16 v22, 0xa6

    const-string v24, "4D"

    aput-object v24, v1, v22

    const/16 v22, 0xa7

    const-string v24, "4F"

    aput-object v24, v1, v22

    const/16 v22, 0xa8

    const-string v24, "51"

    aput-object v24, v1, v22

    const/16 v22, 0xa9

    const-string v24, "53"

    aput-object v24, v1, v22

    const/16 v22, 0xaa

    const-string v24, "55"

    aput-object v24, v1, v22

    const/16 v22, 0xab

    const-string v24, "57"

    aput-object v24, v1, v22

    const/16 v22, 0xac

    const-string v24, "59"

    aput-object v24, v1, v22

    const/16 v22, 0xad

    const-string v24, "5B"

    aput-object v24, v1, v22

    const/16 v22, 0xae

    const-string v24, "5D"

    aput-object v24, v1, v22

    const/16 v22, 0xaf

    const-string v24, "5F"

    aput-object v24, v1, v22

    const/16 v22, 0xb0

    const-string v24, "61"

    aput-object v24, v1, v22

    const/16 v22, 0xb1

    const-string v24, "63"

    aput-object v24, v1, v22

    const/16 v22, 0xb2

    const-string v24, "65"

    aput-object v24, v1, v22

    const/16 v22, 0xb3

    const-string v24, "67"

    aput-object v24, v1, v22

    const/16 v22, 0xb4

    const-string v24, "69"

    aput-object v24, v1, v22

    const/16 v22, 0xb5

    const-string v24, "6B"

    aput-object v24, v1, v22

    const/16 v22, 0xb6

    const-string v24, "6D"

    aput-object v24, v1, v22

    const/16 v22, 0xb7

    const-string v24, "6F"

    aput-object v24, v1, v22

    const/16 v22, 0xb8

    const-string v24, "71"

    aput-object v24, v1, v22

    const/16 v22, 0xb9

    const-string v24, "73"

    aput-object v24, v1, v22

    const/16 v22, 0xba

    const-string v24, "75"

    aput-object v24, v1, v22

    const/16 v22, 0xbb

    const-string v24, "77"

    aput-object v24, v1, v22

    const/16 v22, 0xbc

    const-string v24, "79"

    aput-object v24, v1, v22

    const/16 v22, 0xbd

    const-string v24, "7B"

    aput-object v24, v1, v22

    const/16 v22, 0xbe

    const-string v24, "7D"

    aput-object v24, v1, v22

    const/16 v22, 0xbf

    const-string v24, "7F"

    aput-object v24, v1, v22

    const/16 v22, 0xc0

    const-string v24, "81"

    aput-object v24, v1, v22

    const/16 v22, 0xc1

    const-string v24, "83"

    aput-object v24, v1, v22

    const/16 v22, 0xc2

    const-string v24, "85"

    aput-object v24, v1, v22

    const/16 v22, 0xc3

    const-string v24, "87"

    aput-object v24, v1, v22

    const/16 v22, 0xc4

    const-string v24, "89"

    aput-object v24, v1, v22

    const/16 v22, 0xc5

    const-string v24, "8B"

    aput-object v24, v1, v22

    const/16 v22, 0xc6

    const-string v24, "8D"

    aput-object v24, v1, v22

    const/16 v22, 0xc7

    const-string v24, "8F"

    aput-object v24, v1, v22

    const/16 v22, 0xc8

    const-string v24, "91"

    aput-object v24, v1, v22

    const/16 v22, 0xc9

    const-string v24, "93"

    aput-object v24, v1, v22

    const/16 v22, 0xca

    const-string v24, "95"

    aput-object v24, v1, v22

    const/16 v22, 0xcb

    const-string v24, "97"

    aput-object v24, v1, v22

    const/16 v22, 0xcc

    const-string v24, "99"

    aput-object v24, v1, v22

    const/16 v22, 0xcd

    const-string v24, "9B"

    aput-object v24, v1, v22

    const/16 v22, 0xce

    const-string v24, "9D"

    aput-object v24, v1, v22

    const/16 v22, 0xcf

    const-string v24, "9F"

    aput-object v24, v1, v22

    const/16 v22, 0xd0

    const-string v24, "A1"

    aput-object v24, v1, v22

    const/16 v22, 0xd1

    const-string v24, "A3"

    aput-object v24, v1, v22

    const/16 v22, 0xd2

    const-string v24, "A5"

    aput-object v24, v1, v22

    const/16 v22, 0xd3

    const-string v24, "A7"

    aput-object v24, v1, v22

    const/16 v22, 0xd4

    const-string v24, "A9"

    aput-object v24, v1, v22

    const/16 v22, 0xd5

    const-string v24, "AB"

    aput-object v24, v1, v22

    const/16 v22, 0xd6

    const-string v24, "AD"

    aput-object v24, v1, v22

    const/16 v22, 0xd7

    const-string v24, "AF"

    aput-object v24, v1, v22

    const/16 v22, 0xd8

    const-string v24, "B1"

    aput-object v24, v1, v22

    const/16 v22, 0xd9

    const-string v24, "B3"

    aput-object v24, v1, v22

    const/16 v22, 0xda

    const-string v24, "B5"

    aput-object v24, v1, v22

    const/16 v22, 0xdb

    const-string v24, "B7"

    aput-object v24, v1, v22

    const/16 v22, 0xdc

    const-string v24, "B9"

    aput-object v24, v1, v22

    const/16 v22, 0xdd

    const-string v24, "BB"

    aput-object v24, v1, v22

    const/16 v22, 0xde

    const-string v24, "BD"

    aput-object v24, v1, v22

    const/16 v22, 0xdf

    const-string v24, "BF"

    aput-object v24, v1, v22

    const/16 v22, 0xe0

    const-string v24, "C1"

    aput-object v24, v1, v22

    const/16 v22, 0xe1

    const-string v24, "C3"

    aput-object v24, v1, v22

    const/16 v22, 0xe2

    const-string v24, "C5"

    aput-object v24, v1, v22

    const/16 v22, 0xe3

    const-string v24, "C7"

    aput-object v24, v1, v22

    const/16 v22, 0xe4

    const-string v24, "C9"

    aput-object v24, v1, v22

    const/16 v22, 0xe5

    const-string v24, "CB"

    aput-object v24, v1, v22

    const/16 v22, 0xe6

    const-string v24, "CD"

    aput-object v24, v1, v22

    const/16 v22, 0xe7

    const-string v24, "CF"

    aput-object v24, v1, v22

    const/16 v22, 0xe8

    const-string v24, "D1"

    aput-object v24, v1, v22

    const/16 v22, 0xe9

    const-string v24, "D3"

    aput-object v24, v1, v22

    const/16 v22, 0xea

    const-string v24, "D5"

    aput-object v24, v1, v22

    const/16 v22, 0xeb

    const-string v24, "D7"

    aput-object v24, v1, v22

    const/16 v22, 0xec

    const-string v24, "D9"

    aput-object v24, v1, v22

    const/16 v22, 0xed

    const-string v24, "DB"

    aput-object v24, v1, v22

    const/16 v22, 0xee

    const-string v24, "DD"

    aput-object v24, v1, v22

    const/16 v22, 0xef

    const-string v24, "DF"

    aput-object v24, v1, v22

    const/16 v22, 0xf0

    const-string v24, "E1"

    aput-object v24, v1, v22

    const/16 v22, 0xf1

    const-string v24, "E3"

    aput-object v24, v1, v22

    const/16 v22, 0xf2

    const-string v24, "E5"

    aput-object v24, v1, v22

    const/16 v22, 0xf3

    const-string v24, "E7"

    aput-object v24, v1, v22

    const/16 v22, 0xf4

    const-string v24, "E9"

    aput-object v24, v1, v22

    const/16 v22, 0xf5

    const-string v24, "EB"

    aput-object v24, v1, v22

    const/16 v22, 0xf6

    const-string v24, "ED"

    aput-object v24, v1, v22

    const/16 v22, 0xf7

    const-string v24, "EF"

    aput-object v24, v1, v22

    const/16 v22, 0xf8

    const-string v24, "F1"

    aput-object v24, v1, v22

    const/16 v22, 0xf9

    const-string v24, "F3"

    aput-object v24, v1, v22

    const/16 v22, 0xfa

    const-string v24, "F5"

    aput-object v24, v1, v22

    const/16 v22, 0xfb

    const-string v24, "F7"

    aput-object v24, v1, v22

    const/16 v22, 0xfc

    const-string v24, "F9"

    aput-object v24, v1, v22

    const/16 v22, 0xfd

    const-string v24, "FB"

    aput-object v24, v1, v22

    const/16 v22, 0xfe

    const-string v24, "FD"

    aput-object v24, v1, v22

    const/16 v22, 0xff

    const-string v24, "FF"

    aput-object v24, v1, v22

    .line 723
    sput-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "80"

    aput-object v1, v0, v4

    const-string v1, "01"

    aput-object v1, v0, v6

    const-string v1, "81"

    aput-object v1, v0, v8

    aput-object v5, v0, v10

    const-string v1, "82"

    aput-object v1, v0, v12

    const-string v1, "03"

    aput-object v1, v0, v14

    const-string v1, "83"

    aput-object v1, v0, v16

    aput-object v7, v0, v18

    const-string v1, "84"

    aput-object v1, v0, v20

    const-string v1, "05"

    aput-object v1, v0, v23

    const/16 v1, 0xb

    const-string v2, "85"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v9, v0, v1

    const/16 v1, 0xd

    const-string v2, "86"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "87"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v11, v0, v1

    const/16 v1, 0x11

    const-string v2, "88"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "89"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    aput-object v13, v0, v1

    const/16 v1, 0x15

    const-string v2, "8A"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "0B"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "8B"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v15, v0, v1

    const/16 v1, 0x19

    const-string v2, "8C"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0D"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "8D"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    aput-object v17, v0, v1

    const/16 v1, 0x1d

    const-string v2, "8E"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "0F"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "8F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    aput-object v19, v0, v1

    const/16 v1, 0x21

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    aput-object v21, v0, v1

    const/16 v1, 0x25

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "96"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "97"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "1A"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "9A"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "1B"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "9B"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "1C"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "9C"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "1D"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "9D"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "1E"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "9E"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "1F"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "9F"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "A0"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "A1"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "A2"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "A3"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "A4"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "A5"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "A6"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "A7"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "A8"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "A9"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "2A"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "AA"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "2B"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "AB"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "2C"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "AC"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "2D"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "2E"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "2F"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "B0"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "B1"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "B2"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "B3"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "B4"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "B5"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "B6"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "B7"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "B8"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "B9"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "3A"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "3B"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "3C"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "BC"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "3D"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "3E"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "3F"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "C0"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "C1"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "42"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "C2"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "C3"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "C4"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "C5"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "C6"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "C7"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "C8"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "C9"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "4A"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "4B"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "CB"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "4C"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "4D"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "CD"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "4E"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "CE"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "4F"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "D0"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "D1"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "D2"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "D3"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "D4"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "D5"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "D6"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "D7"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "D8"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "59"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "D9"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "5A"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "DA"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "5B"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "DB"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "5C"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "DC"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "5D"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "DD"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "5E"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "5F"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "DF"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "E0"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "E1"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "E2"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "E3"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "E4"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "E5"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "E6"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "67"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "E7"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "68"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "E8"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "69"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "E9"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "6A"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "EA"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "6B"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "EB"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "6C"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "6D"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "ED"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "6E"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "6F"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "EF"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "F0"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "71"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "F1"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "72"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "F2"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "73"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "F3"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "74"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "F4"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "F5"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "F6"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "F7"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "78"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "F8"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "79"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "F9"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "7A"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "FA"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "7B"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "FB"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "7C"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "FC"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "7D"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "FD"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "7E"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "FE"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "7F"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "FF"

    aput-object v2, v0, v1

    .line 741
    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    .line 1086
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    return-void
.end method

.method public static buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    sget v1, Lcom/android/settingslib/R$array;->bt_icon_fg_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 276
    sget v2, Lcom/android/settingslib/R$array;->bt_icon_bg_colors:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 279
    array-length v2, v0

    rem-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 280
    aget v1, v1, p2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 281
    new-instance v1, Lcom/android/settingslib/widget/AdaptiveIcon;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 282
    aget p0, v0, p2

    invoke-virtual {v1, p0}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    return-object v1
.end method

.method public static byteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static compareGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .line 1416
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    .line 1417
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_4

    :cond_1
    return-object p1

    :cond_2
    if-ne v1, v2, :cond_4

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 758
    invoke-static {p0, v0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 762
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p2

    const-string v0, "%02X"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_2

    .line 767
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    aget-byte v5, p2, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 768
    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    move p0, v2

    .line 771
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_5

    .line 772
    aget-byte p1, p2, p0

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->byteToInt(B)I

    move-result p1

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, v0, 0x2

    .line 773
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 775
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    if-ne p0, v2, :cond_6

    .line 780
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v2, [Ljava/lang/Object;

    aget-byte v4, p2, v3

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 781
    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    move p0, v2

    .line 784
    :goto_1
    array-length p1, p2

    if-ge p0, p1, :cond_5

    .line 785
    aget-byte p1, p2, p0

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->byteToInt(B)I

    move-result p1

    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, v0, 0x2

    .line 786
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 788
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    return v3
.end method

.method private static doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 590
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p0

    return p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1201
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1202
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1205
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1206
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1207
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1208
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static extraTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "(.*?)"

    .line 597
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->generateExpressionWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 598
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 599
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 600
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static generateExpressionWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getTagStart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getTagEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getA2dpBondDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "BluetoothUtils"

    const-string v5, "bond_state== 2"

    const-string v8, "address"

    const-string/jumbo v9, "name"

    const-string v10, "cod"

    const-string v11, "bond_state"

    const-string v12, "appearance"

    const-string v13, "manufacturerdata"

    const-string/jumbo v14, "timestamp"

    const-string v15, "linktype"

    const-string/jumbo v7, "uuids"

    .line 848
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 850
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v16, 0x0

    .line 854
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v17, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v18, v6

    :try_start_1
    const-string v6, " DESC"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    move-object/from16 v20, v18

    move-object/from16 v6, v17

    move-object v0, v7

    move-object/from16 v7, v19

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    :try_start_3
    const-string v0, "getA2dpBondDevices() :: query return empty list"

    .line 857
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    .line 904
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object/from16 v3, v20

    return-object v3

    :catch_0
    move-exception v0

    move-object/from16 v3, v20

    goto/16 :goto_2

    :cond_1
    move-object/from16 v3, v20

    .line 860
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getA2dpBondDevices() :: cursor count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Columns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 862
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 863
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 864
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 865
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 866
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 867
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 868
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 869
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 870
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 872
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_3

    .line 873
    new-instance v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p0

    invoke-direct {v12, v14, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setName(Ljava/lang/String;)V

    .line 875
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setCod(I)V

    .line 876
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setBondState(I)V

    .line 877
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setAppearance(I)V

    .line 879
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v13

    .line 880
    invoke-virtual {v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setManufacturerData([B)V

    move/from16 p1, v6

    move v13, v7

    .line 882
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setTimeStamp(J)V

    .line 883
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setLinkType(I)V

    .line 885
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 886
    invoke-virtual {v12, v6}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setUuids(Ljava/lang/String;)V

    const-string v7, ","

    .line 888
    invoke-static {v6, v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 890
    invoke-static {v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 891
    sget-object v7, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 892
    new-instance v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v7, p2

    invoke-direct {v6, v14, v7, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;)V

    .line 893
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getA2dpBondDevices - "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v7, p2

    .line 897
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v6, p1

    move v7, v13

    goto/16 :goto_0

    .line 904
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v3, v6

    :goto_3
    :try_start_5
    const-string v2, "getA2dpBondDevices :: Occurs IllegalStateException"

    .line 900
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v16, :cond_4

    .line 904
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    return-object v3

    :goto_5
    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_5
    throw v0
.end method

.method public static getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 432
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_2

    const/16 v2, 0x500

    if-eq v1, v2, :cond_1

    const/16 v2, 0x600

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p1, Landroid/util/Pair;

    const v0, 0x1080572

    .line 206
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 208
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 200
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 201
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 202
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 194
    :cond_2
    new-instance p1, Landroid/util/Pair;

    const v0, 0x1080550

    .line 195
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 197
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 189
    :cond_3
    new-instance p1, Landroid/util/Pair;

    const v0, 0x108036b

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 191
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 215
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 217
    invoke-interface {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 223
    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 224
    new-instance p1, Landroid/util/Pair;

    const v0, 0x1080369

    .line 225
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 227
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 229
    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 230
    new-instance p1, Landroid/util/Pair;

    const v0, 0x1080368

    .line 231
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 233
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 236
    :cond_8
    new-instance p1, Landroid/util/Pair;

    const v0, 0x1080570

    .line 237
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getBtDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothUtils"

    .line 292
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    .line 294
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$dimen;->bt_nearby_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 300
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    .line 301
    invoke-static {p1, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take persistable permission for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 311
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    .line 314
    invoke-static {p0, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    new-instance p0, Landroid/util/Pair;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get permission for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get drawable for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    :cond_0
    :goto_1
    new-instance p0, Landroid/util/Pair;

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    .line 258
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 259
    new-instance p0, Landroid/util/Pair;

    new-instance p1, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 260
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 263
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 263
    invoke-static {p0, v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 802
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 803
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 804
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 163
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return p0

    .line 157
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return p0

    .line 159
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return p0

    .line 161
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return p0
.end method

.method public static getControlUriMetaData(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x19

    .line 497
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HEARABLE_CONTROL_SLICE_WITH_WIDTH"

    .line 498
    invoke-static {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->extraTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .line 1393
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p0

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1401
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v4

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 1406
    :cond_2
    invoke-static {p0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->compareGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 1408
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_3
    return-object p0
.end method

.method public static getDexQuickPannelOn()Z
    .locals 1

    .line 700
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    return v0
.end method

.method public static getHostOverlayIconBitmap(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 1185
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1192
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1193
    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getOverlayIconTintableDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1195
    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1196
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "BluetoothUtils"

    const-string v1, "getHostOverlayIconBitmap - cachedBluetoothDevice is null"

    .line 1187
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1189
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1190
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1274
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$color;->qs_detail_item_device_bt_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 1279
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_2

    .line 1282
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1289
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1290
    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getOverlayIconTintableDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1292
    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v1

    :cond_2
    const-string p1, "BluetoothUtils"

    const-string v1, "getHostOverlayIconDrawable - cachedBluetoothDevice is null"

    .line 1284
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1286
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p0
.end method

.method public static getHostOverlayIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1298
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 1299
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 1298
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 1301
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 464
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 469
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    .line 1083
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public static getOverlayIconTintableDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1214
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$color;->qs_detail_item_device_bt_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1221
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1223
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$drawable;->sharing_ic_overlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1226
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$drawable;->sharing_ic_tintable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1229
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1230
    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1233
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1235
    invoke-virtual {v3, p1, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1237
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x0

    .line 1238
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1239
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1240
    invoke-virtual {v3, v1, v4, v4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1241
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1242
    invoke-virtual {v3, v0, v4, v4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1243
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1245
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static getQuickPannelOn()Z
    .locals 1

    .line 696
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    return v0
.end method

.method public static getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Z)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "getRestoredDevices :: will be cursor close"

    const-string v2, "BluetoothUtils"

    const-string v6, "bond_state == 1 OR bond_state == 4"

    const-string v9, "address"

    const-string/jumbo v10, "name"

    const-string v11, "cod"

    const-string v12, "bond_state"

    const-string v13, "appearance"

    const-string v14, "manufacturerdata"

    const-string/jumbo v15, "timestamp"

    const-string v8, "linktype"

    const-string/jumbo v7, "uuids"

    .line 933
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 935
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 938
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 p1, v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v3, v4}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 943
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v5

    :try_start_1
    const-string v5, " DESC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    move-object/from16 v3, v16

    move-object/from16 v21, p1

    move-object/from16 v22, v19

    move-object/from16 v5, v17

    move-object/from16 v23, v7

    move-object/from16 v7, v18

    move-object v0, v8

    move-object/from16 v8, v20

    :try_start_2
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    :try_start_3
    const-string v0, "getRestoredDevices() :: query return null"

    .line 947
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 1000
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v4, 0x0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    .line 950
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRestoredDevices() :: cursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Columns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 952
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 953
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 954
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 955
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 956
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 957
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 958
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 959
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v12, v23

    .line 960
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 962
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_3

    .line 966
    new-instance v13, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, p0

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 967
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setName(Ljava/lang/String;)V

    .line 968
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setCod(I)V

    .line 969
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setBondState(I)V

    .line 970
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setAppearance(I)V

    .line 973
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v14

    .line 974
    invoke-virtual {v13, v14}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setManufacturerData([B)V

    move/from16 p1, v5

    .line 976
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setTimeStamp(J)V

    .line 977
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setLinkType(I)V

    .line 980
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 981
    invoke-static {v14, v4, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSyncDevice([BLjava/lang/String;[Landroid/os/ParcelUuid;)Z

    move-result v14

    .line 984
    invoke-virtual {v13, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setUuids(Ljava/lang/String;)V

    .line 985
    new-instance v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v5, p2

    invoke-direct {v4, v15, v5, v13, v14}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;Z)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p3, :cond_2

    if-eqz v14, :cond_2

    move-object/from16 v13, v21

    .line 988
    :try_start_5
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v14, v22

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object/from16 v13, v21

    move-object/from16 v14, v22

    .line 990
    :try_start_6
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v5, p1

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v13, v21

    move-object/from16 v14, v22

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v13, v21

    :goto_2
    move-object/from16 v14, v22

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v14, v19

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    move-object v14, v5

    :goto_3
    const/4 v3, 0x0

    :goto_4
    :try_start_7
    const-string v4, "getRestoredDevices :: Occurs IllegalStateException"

    .line 996
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_4

    .line 1000
    :goto_5
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz p3, :cond_6

    .line 1006
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "getRestoredDevices :: syncedDevices"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v13

    .line 1009
    :cond_6
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "getRestoredDevices :: restoredDevices"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v14

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v3, :cond_8

    .line 1000
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1003
    :cond_8
    throw v0
.end method

.method public static getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 446
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 450
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 1059
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1062
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 1066
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTagEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 610
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "</%s>"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTagStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 606
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "<%s>"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;
    .locals 0

    .line 483
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 487
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static hasGearManufacturerData([B)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1483
    array-length v1, p0

    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_ID:I

    add-int/lit8 v3, v2, 0x2

    if-lt v1, v3, :cond_0

    .line 1484
    aget-byte v1, p0, v2

    if-nez v1, :cond_0

    add-int/2addr v2, v0

    aget-byte p0, p0, v2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1490
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasGearManufacturerData : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluetoothUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const-string/jumbo v0, "settings_ui"

    const-string v1, "bt_advanced_header_enabled"

    const/4 v2, 0x1

    .line 338
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "BluetoothUtils"

    if-nez v0, :cond_0

    const-string p0, "isAdvancedDetailsHeader: advancedEnabled is false"

    .line 340
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 344
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    .line 345
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, 0x11

    .line 349
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Untethered Headset"

    .line 351
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Watch"

    .line 352
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Default"

    .line 353
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 354
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdvancedDetailsHeader: deviceType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 657
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const-string v1, "(?i).*BMW.*"

    .line 661
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "(?i).*A0:56:B2.*|(?i).*B8:24:10.*|(?i).*9C:DF:03.*|(?i).*00:19:C0.*"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "(?i)MINI[0-9].*"

    .line 662
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isBtCastConnectedAsGuest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1128
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1131
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1134
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 1139
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda4;-><init>()V

    .line 1140
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V

    .line 1141
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda6;-><init>()V

    .line 1142
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 1143
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1144
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1145
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1155
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1158
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1161
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->isHostEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1166
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 1167
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V

    .line 1168
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 1169
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 1170
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1171
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1172
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 3

    .line 642
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 643
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 645
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 647
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z
    .locals 1

    const/16 p0, 0x1f00

    if-nez p2, :cond_0

    move p2, p0

    goto :goto_0

    .line 1445
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, p0, :cond_4

    if-nez p4, :cond_1

    goto :goto_1

    .line 1456
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isGalaxyWatchDevice: uuids = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x704

    if-ne p2, p0, :cond_6

    const-string p0, "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"

    .line 1458
    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/bluetooth/SemBluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const-string p0, "5e8945b0-9525-11e3-a5e2-0800200c9a66"

    .line 1462
    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/bluetooth/SemBluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    .line 1466
    :cond_3
    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasGearManufacturerData([B)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    .line 1448
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isMatchedWatchName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 1452
    :cond_5
    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasGearManufacturerData([B)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isGreenishModel()Z
    .locals 2

    const-string/jumbo v0, "ro.product.model"

    .line 580
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-T97"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMatchedWatchName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SM-V700"

    .line 1476
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Samsung Galaxy Gear"

    .line 1477
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1478
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "galaxy gear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "BluetoothUtils"

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 675
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "isPackageExists :: appInfo is null"

    .line 679
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 682
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 685
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageExists :: target package = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", find = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 1

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1377
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v1, 0x0

    const v2, 0x1d524

    if-ge v0, v2, :cond_0

    .line 1379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSmep() OneUI version is low : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p0, :cond_2

    .line 1383
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 1385
    array-length p0, p0

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSyncDevice([BLjava/lang/String;[Landroid/os/ParcelUuid;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "BluetoothUtils"

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 1018
    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v3, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    .line 1020
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object p0

    .line 1021
    aget-byte v3, p0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 1023
    aget-byte p0, p0, v0

    if-eq p0, v2, :cond_0

    const/4 v5, 0x2

    if-eq p0, v5, :cond_0

    const/4 v5, 0x3

    if-ne p0, v5, :cond_1

    :cond_0
    if-lt v3, v2, :cond_1

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v5, 0x41

    if-ne p0, v5, :cond_4

    if-lt v3, v2, :cond_4

    if-gt v3, v4, :cond_4

    .line 1027
    :cond_2
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "isSyncDevice :: DeviceId"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    const-string p0, "e7ab2241-ca64-4a69-ac02-05f5c6fe2d62"

    if-eqz p1, :cond_7

    .line 1032
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, ","

    .line 1033
    invoke-static {p1, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1035
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, p1, v4

    .line 1036
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1037
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "isSyncDevice :: UUID"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_9

    .line 1045
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1046
    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1047
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "isSyncDevice :: UUID from pacelUUID"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2

    .line 1053
    :cond_9
    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p0, :cond_a

    const-string p0, "isSyncDevice :: It is not synced device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 574
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$isBtCastConnectedAsGuest$0(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 1140
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isBtCastConnectedAsGuest$1(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 1141
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isBtCastConnectedAsGuest$2(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 1

    .line 1142
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$isBtCastConnectedAsHost$3(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 1167
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isBtCastConnectedAsHost$4(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 1168
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isBtCastConnectedAsHost$5(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3

    .line 1074
    array-length v0, p0

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    .line 1075
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1076
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static setQuickPannelOn(ZZ)V
    .locals 2

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQuickPannelOn :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", from Dex :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sput-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    .line 692
    sput-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 555
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u200e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 536
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 626
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 627
    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 817
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x2

    .line 825
    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 828
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stringToByte : Wrong format - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluetoothUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .locals 4

    .line 503
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 512
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateDeviceName :: change device name to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
