.class public Lcom/samsung/android/knox/EdmConstants;
.super Ljava/lang/Object;
.source "EdmConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;,
        Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;
    }
.end annotation


# static fields
.field public static final APP_MANAGEMENT_SERVICE_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 457
    new-instance v0, Lcom/samsung/android/knox/EdmConstants$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EdmConstants$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    .line 488
    new-instance v0, Lcom/samsung/android/knox/EdmConstants$2;

    invoke-direct {v0}, Lcom/samsung/android/knox/EdmConstants$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/EdmConstants;->APP_MANAGEMENT_SERVICE_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public static getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    .locals 1

    const-string v0, "36"

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 622
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 574
    :pswitch_0
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 576
    :pswitch_1
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 578
    :pswitch_2
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 580
    :pswitch_3
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 582
    :pswitch_4
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 584
    :pswitch_5
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 586
    :pswitch_6
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 588
    :pswitch_7
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 590
    :pswitch_8
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 592
    :pswitch_9
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 594
    :pswitch_a
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 596
    :pswitch_b
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 598
    :pswitch_c
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 600
    :pswitch_d
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 602
    :pswitch_e
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 604
    :pswitch_f
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 606
    :pswitch_10
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 608
    :pswitch_11
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 610
    :pswitch_12
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 612
    :pswitch_13
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 614
    :pswitch_14
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 616
    :pswitch_15
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 618
    :pswitch_16
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    .line 620
    :pswitch_17
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;
    .locals 2

    .line 505
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 507
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 509
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_1
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    .line 511
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_2
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 513
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_3
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_4

    .line 515
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_4
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_5

    .line 517
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_5
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_6

    .line 519
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_6
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7

    .line 521
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_7
    const/16 v1, 0x19

    if-ne v0, v1, :cond_8

    .line 523
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_8
    const/16 v1, 0x18

    if-ne v0, v1, :cond_9

    .line 525
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_9
    const/16 v1, 0x17

    if-ne v0, v1, :cond_a

    .line 527
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_a
    const/16 v1, 0x16

    if-ne v0, v1, :cond_b

    .line 529
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_b
    const/16 v1, 0x15

    if-ne v0, v1, :cond_c

    .line 531
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_6_0:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_c
    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    .line 533
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_d
    const/16 v1, 0x13

    if-ne v0, v1, :cond_e

    .line 535
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_8:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_e
    const/16 v1, 0x12

    if-ne v0, v1, :cond_f

    .line 537
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_f
    const/16 v1, 0x11

    if-ne v0, v1, :cond_10

    .line 539
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_10
    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    .line 541
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_11
    const/16 v1, 0xf

    if-ne v0, v1, :cond_12

    .line 543
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_12
    const/16 v1, 0xe

    if-ne v0, v1, :cond_13

    .line 545
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_5:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_13
    const/16 v1, 0xd

    if-ne v0, v1, :cond_14

    .line 547
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_14
    const/16 v1, 0xc

    if-ne v0, v1, :cond_15

    .line 549
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_4:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_15
    const/16 v1, 0xb

    if-ne v0, v1, :cond_16

    .line 551
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    :cond_16
    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    .line 553
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_2:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0

    .line 555
    :cond_17
    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    return-object v0
.end method
