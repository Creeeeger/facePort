.class public final Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;
.super Landroid/hardware/biometrics/fingerprint/SensorProps;
.source "HidlFingerprintSensorConfig.java"


# static fields
.field private static final blacklist FEATURE_USE_SENSOR_RESOURCE_CONFIG:Z


# instance fields
.field private blacklist mModality:I

.field private blacklist mSensorId:I

.field private blacklist mStrength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/SensorProps;-><init>()V

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

.method private blacklist mapHidlToAidlSensorConfiguration(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mSensorId:I

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mStrength:I

    invoke-direct {p0, v1}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->authenticatorStrengthToPropertyStrength(I)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->halControlsIllumination:Z

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v2, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    const-string v2, "google_touch_display_ultrasonic"

    iget-object v3, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-static {}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getMaxTemplateNumberFromSPF()I

    move-result v4

    iput v4, v3, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x4

    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_0

    :pswitch_1
    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_0

    :pswitch_2
    const-string v1, "ultrasonic"

    const-string v3, "google_touch_display_ultrasonic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_0

    :cond_0
    const-string v1, "optical"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x5

    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_0

    :pswitch_4
    iput-byte v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    :cond_1
    :goto_0
    invoke-direct {p0, v0, v0, v0}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->setSensorLocation(III)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setSensorLocation(III)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    new-instance v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/SensorLocation;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    const-string v1, ""

    iput-object v1, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p1, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p2, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p3, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    return-void
.end method


# virtual methods
.method public blacklist getModality()I
    .locals 1

    iget v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mModality:I

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

    iput v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mSensorId:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mModality:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mStrength:I

    invoke-direct {p0, p2}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mapHidlToAidlSensorConfiguration(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
