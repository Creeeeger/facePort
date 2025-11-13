.class public final Lcom/samsung/android/hardware/display/RefreshRateConfig;
.super Ljava/lang/Object;
.source "RefreshRateConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    }
.end annotation


# static fields
.field private static final blacklist APSR_MIN_REFRESH_RATE:I = 0xa

.field private static final blacklist TYPE_SEAMLESS:I = 0x2

.field private static final blacklist TYPE_SEAMLESS_PLUS:I = 0x3

.field private static final blacklist TYPE_SWITCHABLE:I = 0x1

.field private static blacklist sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field private static blacklist sIsSubScreen:Z

.field private static blacklist sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

.field private static blacklist sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;


# instance fields
.field private final blacklist mDisplayType:I

.field blacklist mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

.field blacklist mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

.field private final blacklist mUnsupportedNS:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "typeConfig"    # Ljava/lang/String;
    .param p2, "highSpeedConfig"    # Ljava/lang/String;
    .param p3, "normalSpeedConfig"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 87
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mUnsupportedNS:Z

    .line 88
    return-void
.end method

.method public static blacklist createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 1
    .param p0, "typeConfig"    # Ljava/lang/String;
    .param p1, "highSpeedConfig"    # Ljava/lang/String;
    .param p2, "normalSpeedConfig"    # Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .locals 3

    .line 59
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsSubScreen:Z

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "0"

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 69
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-object v0

    .line 71
    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-nez v0, :cond_2

    .line 72
    const-string v0, "1"

    const-string v1, "60,96,120"

    const-string v2, "60,48"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 80
    :cond_2
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-object v0
.end method

.method private static blacklist isInPrimaryDevice(Landroid/view/DisplayInfo;)Z
    .locals 2
    .param p0, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 118
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    .line 119
    invoke-static {v0, v1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    sget-object v1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSubScreen()Z
    .locals 1

    .line 126
    sget-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsSubScreen:Z

    return v0
.end method

.method public static blacklist updateSubScreen(Landroid/view/DisplayInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/view/DisplayInfo;

    .line 130
    invoke-static {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isInPrimaryDevice(Landroid/view/DisplayInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsSubScreen:Z

    .line 131
    return-void
.end method


# virtual methods
.method public blacklist createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "useDefaultRefreshRate"    # Z

    .line 156
    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Ljava/lang/String;ZLcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate-IA;)V

    return-object v0
.end method

.method public blacklist getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-object v0
.end method

.method public blacklist getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-object v0
.end method

.method public blacklist getTypeToString()Ljava/lang/String;
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :pswitch_0
    const-string v0, "Seamless+"

    return-object v0

    .line 139
    :pswitch_1
    const-string v0, "Seamless"

    return-object v0

    .line 137
    :pswitch_2
    const-string v0, "Switchable"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isSeamless()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSeamlessPlus()Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSwitchable()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist supportApsr()Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamlessPlus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->min()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist unsupportedNS()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mUnsupportedNS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
