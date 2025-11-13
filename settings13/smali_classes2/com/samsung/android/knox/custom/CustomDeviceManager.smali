.class public Lcom/samsung/android/knox/custom/CustomDeviceManager;
.super Ljava/lang/Object;
.source "CustomDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;
    }
.end annotation


# static fields
.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;
    .locals 4

    const-class v0, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    monitor-enter v0

    .line 1523
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    if-nez v1, :cond_0

    .line 1524
    new-instance v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 1526
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_2

    .line 1527
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1528
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    goto :goto_0

    .line 1530
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 1533
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z
    .locals 0

    .line 1801
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;
    .locals 2

    const-string p0, "28"

    .line 1741
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "36"

    .line 1744
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz p0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    .line 1747
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_0
    const/4 v1, 0x5

    if-lt p0, v1, :cond_1

    const/4 v1, 0x6

    if-gt p0, v1, :cond_1

    .line 1749
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_1
    const/4 v1, 0x7

    if-lt p0, v1, :cond_2

    const/16 v1, 0x9

    if-gt p0, v1, :cond_2

    .line 1751
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_2
    const/16 v1, 0xa

    if-lt p0, v1, :cond_3

    const/16 v1, 0xb

    if-gt p0, v1, :cond_3

    .line 1753
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_3
    const/16 v1, 0xc

    if-ne p0, v1, :cond_4

    .line 1755
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_4
    const/16 v1, 0xd

    if-ne p0, v1, :cond_5

    .line 1757
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_5
    const/16 v1, 0xe

    if-ne p0, v1, :cond_6

    .line 1759
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_6
    const/16 v1, 0xf

    if-ne p0, v1, :cond_7

    .line 1761
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_7
    const/16 p0, 0x18

    if-ne v0, p0, :cond_8

    .line 1763
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_0:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_8
    const/16 p0, 0x19

    if-ne v0, p0, :cond_9

    .line 1765
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_9
    const/16 p0, 0x1a

    if-ne v0, p0, :cond_a

    .line 1767
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_a
    const/16 p0, 0x1b

    if-ne v0, p0, :cond_b

    .line 1769
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_b
    const/16 p0, 0x1c

    if-ne v0, p0, :cond_c

    .line 1771
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_c
    const/16 p0, 0x1d

    if-ne v0, p0, :cond_d

    .line 1773
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_d
    const/16 p0, 0x1e

    if-ne v0, p0, :cond_e

    .line 1775
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_4_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_e
    const/16 p0, 0x1f

    if-ne v0, p0, :cond_f

    .line 1777
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_f
    const/16 p0, 0x20

    if-ne v0, p0, :cond_10

    .line 1779
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_10
    const/16 p0, 0x21

    if-ne v0, p0, :cond_11

    .line 1781
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_11
    const/16 p0, 0x22

    if-ne v0, p0, :cond_12

    .line 1783
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_12
    const/16 p0, 0x23

    if-ne v0, p0, :cond_13

    .line 1785
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_13
    const/16 p0, 0x24

    if-lt v0, p0, :cond_14

    .line 1787
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    .line 1789
    :cond_14
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0
.end method
