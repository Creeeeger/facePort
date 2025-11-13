.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristics"
.end annotation


# static fields
.field public static final whitelist SENSOR_POSITION_HOME_KEY:I = 0x1

.field public static final whitelist SENSOR_POSITION_IN_DISPLAY:I = 0x2

.field public static final whitelist SENSOR_POSITION_POWER_KEY:I = 0x4

.field public static final whitelist SENSOR_POSITION_REAR:I = 0x3

.field public static final whitelist SENSOR_TYPE_CAPACITANCE:I = 0x1

.field public static final whitelist SENSOR_TYPE_OPTICAL:I = 0x2

.field public static final whitelist SENSOR_TYPE_ULTRASONIC:I = 0x3

.field private static final blacklist mConfig:Ljava/lang/String; = "google_touch_display_ultrasonic"


# instance fields
.field private final blacklist mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 620
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method


# virtual methods
.method public whitelist getMaxFingerprintCount()I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    move-result v0

    return v0
.end method

.method public whitelist getSensorAreaInDisplay()Landroid/graphics/Rect;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSensorPosition()I
    .locals 1

    .line 633
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getSensorType()I
    .locals 2

    .line 623
    const-string v0, "google_touch_display_ultrasonic"

    const-string/jumbo v1, "ultrasonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const/4 v0, 0x3

    return v0

    .line 625
    :cond_0
    const-string/jumbo v1, "optical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const/4 v0, 0x2

    return v0

    .line 628
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
