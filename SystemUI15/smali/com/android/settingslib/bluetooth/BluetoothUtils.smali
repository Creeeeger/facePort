.class public final Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BD_ROTATE_LEFT:[Ljava/lang/String;

.field public static final BD_ROTATE_RIGHT:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static mDexQuickPannelOn:Z

.field public static final mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

.field public static mQuickPannelOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "02"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "04"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "06"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "08"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "0A"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "0C"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "0E"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "10"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "12"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "14"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "16"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "18"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "1A"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "1C"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "1E"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "20"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "22"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "24"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "26"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "28"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "2A"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "2C"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "2E"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "30"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "32"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "34"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "36"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "38"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "3A"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "3C"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "3E"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "40"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "42"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "44"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "46"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "48"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "4A"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "4C"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "4E"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "50"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "52"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "54"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "56"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "58"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "5A"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "5C"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "5E"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "60"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "62"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "64"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "66"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "68"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "6A"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "6C"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "6E"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "70"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "72"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "74"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "76"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "78"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "7A"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "7C"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "7E"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "80"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "82"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "84"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "86"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "88"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "8A"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "8C"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "8E"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "90"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "92"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "94"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "96"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "98"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "9A"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "9C"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "9E"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "A0"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "A2"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "A4"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "A6"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "A8"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "AA"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "AC"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "AE"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "B0"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "B2"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "B4"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "B6"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "B8"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "BA"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "BC"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "BE"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "C0"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "C2"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "C4"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "C6"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "C8"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "CA"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "CC"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "CE"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "D0"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "D2"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "D4"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "D6"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "D8"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "DA"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "DC"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "DE"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "E0"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "E2"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "E4"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "E6"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "E8"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "EA"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "EC"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "EE"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "F0"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "F2"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "F4"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "F6"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "F8"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "FA"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "FC"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "FE"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "01"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "03"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "05"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "07"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "09"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "0B"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "0D"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "0F"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "11"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "13"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "15"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "17"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "19"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "1B"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "1D"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "1F"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "21"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "23"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "25"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "27"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "29"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "2B"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "2D"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "2F"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "31"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "33"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "35"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "37"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "39"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "3B"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "3D"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "3F"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "41"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "43"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "45"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "47"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "49"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "4B"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "4D"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "4F"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "51"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "53"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "55"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "57"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "59"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "5B"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "5D"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "5F"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "61"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "63"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "65"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "67"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "69"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "6B"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "6D"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "6F"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "71"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "73"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "75"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "77"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "79"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "7B"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "7D"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "7F"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "81"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "83"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "85"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "87"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "89"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "8B"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "8D"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "8F"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "91"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "93"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "95"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "97"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "99"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "9B"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "9D"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "9F"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "A1"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "A3"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "A5"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "A7"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "A9"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "AB"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "AD"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "AF"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "B1"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "B3"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "B5"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "B7"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "B9"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "BB"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "BD"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "BF"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "C1"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "C3"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "C5"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "C7"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "C9"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "CB"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "CD"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "CF"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "D1"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "D3"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "D5"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "D7"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "D9"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "DB"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "DD"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "DF"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "E1"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "E3"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "E5"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "E7"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "E9"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "EB"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "ED"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "EF"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "F1"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "F3"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "F5"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "F7"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "F9"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "FB"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "FD"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "FF"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareSameWithGear(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3a

    if-eq v5, v7, :cond_0

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/2addr v3, v6

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X"

    invoke-static {p0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v6

    :goto_1
    if-ge p0, v0, :cond_4

    aget-byte v3, v1, p0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, p0, 0x3

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_2
    return v2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 7

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_4

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

    :cond_0
    new-instance p1, Landroid/util/Pair;

    const v0, 0x10805c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302f3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302f4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/util/Pair;

    const v0, 0x108059c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302f5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/util/Pair;

    const v0, 0x10803b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302ef

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v1

    const v2, 0x7f1302f2

    if-eqz v1, :cond_5

    new-instance p1, Landroid/util/Pair;

    const v0, 0x10803b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v3, v1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v4, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v5

    if-eqz v5, :cond_6

    instance-of v6, v4, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v6, :cond_8

    instance-of v4, v4, Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    if-nez v3, :cond_6

    move v3, v5

    goto :goto_1

    :cond_8
    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_9
    if-eqz v3, :cond_a

    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_a
    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Landroid/util/Pair;

    const v0, 0x10803b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302f1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_b
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Landroid/util/Pair;

    const v0, 0x10803b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c
    new-instance p1, Landroid/util/Pair;

    const v0, 0x10805c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1302ee

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
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

    :cond_0
    const p0, 0x7f130289

    return p0

    :cond_1
    const p0, 0x7f130279

    return p0

    :cond_2
    const p0, 0x7f130282

    return p0

    :cond_3
    const p0, 0x7f130288

    return p0
.end method

.method public static getControlUriMetaData(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p0, "<HEARABLE_CONTROL_SLICE_WITH_WIDTH>(.*?)</HEARABLE_CONTROL_SLICE_WITH_WIDTH>"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v4

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v5

    if-eqz v4, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    goto :goto_2

    :cond_3
    if-eq v5, v6, :cond_4

    if-ne v5, v1, :cond_7

    :cond_4
    :goto_1
    move-object p0, v3

    goto :goto_2

    :cond_5
    if-ne v5, v1, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_8
    return-object p0
.end method

.method public static getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

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

.method public static getOverlayIconTintableDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06058b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p2, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p3, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Z)Ljava/util/List;
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "getRestoredDevices :: will be cursor close"

    const-string v2, "BluetoothUtils"

    const-string v3, "getRestoredDevices() :: cursor count: "

    const-string v7, "bond_state == 1 OR bond_state == 4"

    const-string v10, "address"

    const-string v11, "name"

    const-string v12, "cod"

    const-string v13, "bond_state"

    const-string v14, "appearance"

    const-string v15, "manufacturerdata"

    const-string/jumbo v9, "timestamp"

    const-string v8, "linktype"

    const-string/jumbo v6, "uuids"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v16, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v16, v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v19, "timestamp DESC"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v17

    move-object/from16 v23, v16

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    move-object/from16 v25, v8

    move-object/from16 v8, v21

    move-object v0, v9

    move-object/from16 v9, v19

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_1

    :try_start_2
    const-string v0, "getRestoredDevices() :: query return null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v18

    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    :goto_0
    move-object/from16 v6, v22

    :goto_1
    move-object/from16 v12, v23

    goto/16 :goto_5

    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Columns : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v10, v25

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v11, v24

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p0

    invoke-direct {v12, v14, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mName:Ljava/lang/String;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mCod:I

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mBondState:I

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAppearance:I

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mManufacturerData:[B

    move v15, v5

    move/from16 v16, v6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mTimeStamp:J

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSyncDevice(Ljava/lang/String;[B)Z

    move-result v6

    invoke-virtual {v12, v5}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setUuids(Ljava/lang/String;)V

    new-instance v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v13, p1

    invoke-direct {v5, v14, v13, v12, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_2

    if-eqz v6, :cond_2

    move-object/from16 v6, v22

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v12, v23

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_1

    :cond_2
    move-object/from16 v6, v22

    move-object/from16 v12, v23

    :try_start_5
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v22, v6

    move-object/from16 v23, v12

    move v5, v15

    move/from16 v6, v16

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v18, v4

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v6, v22

    move-object/from16 v12, v23

    goto :goto_4

    :cond_3
    move-object/from16 v6, v22

    move-object/from16 v12, v23

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object/from16 v12, v16

    move-object/from16 v6, v17

    :goto_5
    :try_start_6
    const-string v3, "getRestoredDevices :: Occurs IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v18, :cond_4

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_6
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p2, :cond_6

    if-eqz v0, :cond_5

    const-string v0, "getRestoredDevices :: syncedDevices"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v6

    :cond_6
    if-eqz v0, :cond_7

    const-string v0, "getRestoredDevices :: restoredDevices"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v12

    :goto_7
    if-eqz v18, :cond_8

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public static getStringToken(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasGearManufacturerData([B)Z
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_ID:I

    add-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_0

    aget-byte v0, p0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    aget-byte p0, p0, v1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "hasGearManufacturerData : "

    const-string v1, "BluetoothUtils"

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static isActiveMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const-string v0, "settings_ui"

    const-string v1, "bt_advanced_header_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "BluetoothUtils"

    if-nez v0, :cond_0

    const-string v0, "isAdvancedDetailsHeader: advancedEnabled is false"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    return v2

    :cond_3
    sget-object v0, Lcom/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_4
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V

    :goto_3
    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_7

    const-string p0, "isAdvancedDetailsHeader is true with main icon uri"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    return v1
.end method

.method public static isAvailableHearingDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedAshaHearingAidDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isFilterMatched() device : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", the profile is connected."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAvailableMediaBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/AudioManager;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedAshaHearingAidDevice()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v3

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    move v3, v1

    goto :goto_4

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isFilterMatched() device : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", the profile is connected."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    :goto_4
    return v3
.end method

.method public static isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_cast_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public static isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object v0

    const-string v1, "BluetoothUtils"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth device "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have exclusive manager"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Package "

    const-string v2, " is not installed/enabled"

    invoke-static {p0, p1, v2, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v0

    :goto_1
    if-nez p0, :cond_3

    return v0

    :cond_3
    const-string p0, "Found exclusively managed app "

    invoke-static {p0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isGalaxyWatchDevice(Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z
    .locals 3

    const/16 v0, 0x1f00

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isGalaxyWatchDevice: uuids = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothUtils"

    invoke-static {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x704

    if-ne p1, p0, :cond_6

    const-string p0, "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/bluetooth/SemBluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const-string p0, "5e8945b0-9525-11e3-a5e2-0800200c9a66"

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/bluetooth/SemBluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasGearManufacturerData([B)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_4
    :goto_1
    const-string p1, "SM-V700"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Samsung Galaxy Gear"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "galaxy gear"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasGearManufacturerData([B)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_2
    return v1
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 1

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

.method public static isSyncDevice(Ljava/lang/String;[B)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "BluetoothUtils"

    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    new-instance v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v4, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    iget-object p1, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object p1, p1, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    aget-byte v4, p1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aget-byte p1, p1, v0

    if-eq p1, v3, :cond_0

    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    :cond_0
    if-lt v4, v3, :cond_1

    if-le v4, v5, :cond_2

    :cond_1
    const/16 v6, 0x41

    if-ne p1, v6, :cond_4

    if-lt v4, v3, :cond_4

    if-gt v4, v5, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    const-string p0, "isSyncDevice :: DeviceId"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    array-length p1, p0

    move v4, v0

    :goto_0
    if-ge v4, p1, :cond_7

    aget-object v5, p0, v4

    const-string v6, "e7ab2241-ca64-4a69-ac02-05f5c6fe2d62"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    const-string p0, "isSyncDevice :: UUID"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    const-string p0, "isSyncDevice :: It is not synced device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0
.end method

.method public static setQuickPannelOn(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setQuickPannelOn :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", from Dex :: false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

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

    :catch_0
    const-string/jumbo v1, "stringToByte : Wrong format - "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "device_name"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    const-string/jumbo p0, "updateDeviceName :: change device name to "

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
