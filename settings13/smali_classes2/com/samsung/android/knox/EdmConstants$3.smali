.class synthetic Lcom/samsung/android/knox/EdmConstants$3;
.super Ljava/lang/Object;
.source "EdmConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EdmConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

.field static final synthetic $SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 789
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->values()[Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v4, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_0_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v5, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_1_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v6, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_1_2_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v7, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v8, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v9, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v10, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v11, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v12, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v13, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v14, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v13, 0xe

    :try_start_d
    sget-object v14, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v15, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v14, 0xf

    :try_start_e
    sget-object v15, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v16, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v15, 0x10

    :try_start_f
    sget-object v16, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v17, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v16, 0x11

    :try_start_10
    sget-object v17, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v18, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v17, 0x12

    :try_start_11
    sget-object v18, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v19, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aput v17, v18, v19
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v18, 0x13

    :try_start_12
    sget-object v19, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v20, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aput v18, v19, v20
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    const/16 v19, 0x14

    :try_start_13
    sget-object v20, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v21, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aput v19, v20, v21
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/16 v20, 0x15

    :try_start_14
    sget-object v21, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v22, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aput v20, v21, v22
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    const/16 v21, 0x16

    :try_start_15
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v21, v22, v23
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v22, v23
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v22, v23
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v22, v23
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v22, v23
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v22, v23
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v22, v23
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v22, v23
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v22, v23
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v22, v23
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v22, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_NONE:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const/16 v24, 0x20

    aput v24, v22, v23
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 672
    :catch_1f
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->values()[Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    :try_start_20
    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aput v1, v15, v23
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v15, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v0, v1, v15
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4_0_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v19, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v20, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v21, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$3;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseSdkVersion:[I

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
