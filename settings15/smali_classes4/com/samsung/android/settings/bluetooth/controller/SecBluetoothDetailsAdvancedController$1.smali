.class public abstract synthetic Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$bluetooth$SmepTag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/bluetooth/SmepTag;->values()[Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_ANC_LEVEL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_AMBIENT_LEVEL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_BATTERY:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_EQ:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_LOCK:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_CONTROL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_SWITCH_AUDIO_PATH_BY_WEARING_STATE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_ALWAYS_ON_MIC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_SEAMLESS_EARBUD_CONNECTION:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_FIND_MY_BUDS:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_BINARY_UPDATE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_AUTO_SWITCH:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_SPATIAL_AUDIO:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_REAL_SOUND_RECORDING:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_LONG_PRESS_HOTKEY_VOICE_ASSISTANT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_LONG_PRESS_HOTKEY_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_LONG_PRESS_HOTKEY_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_LONG_PRESS_HOTKEY_VOLUME_CTRL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_USE_AMBIENT_DURING_CALL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
