.class public final Landroid/hardware/face/HidlFaceSensorConfig;
.super Landroid/hardware/biometrics/face/SensorProps;
.source "HidlFaceSensorConfig.java"


# instance fields
.field private blacklist mModality:I

.field private blacklist mSensorId:I

.field private blacklist mStrength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/face/SensorProps;-><init>()V

    return-void
.end method

.method private blacklist authenticatorStrengthToPropertyStrength(I)B
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0xff -> :sswitch_1
        0xfff -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist mapHidlToAidlFaceSensorConfigurations(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mSensorId:I

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mStrength:I

    invoke-direct {p0, v1}, Landroid/hardware/face/HidlFaceSensorConfig;->authenticatorStrengthToPropertyStrength(I)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->halControlsPreview:Z

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->supportsDetectInteraction:Z

    return-void
.end method


# virtual methods
.method public blacklist getModality()I
    .locals 1

    iget v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mModality:I

    return v0
.end method

.method public blacklist parse(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mSensorId:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mModality:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mStrength:I

    invoke-direct {p0, p2}, Landroid/hardware/face/HidlFaceSensorConfig;->mapHidlToAidlFaceSensorConfigurations(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
