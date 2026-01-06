.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;
.super Ljava/lang/Object;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;
    }
.end annotation


# static fields
.field private static final AOD_BRIGHTNESS_10NIT:I = 0x1

.field private static final AOD_BRIGHTNESS_2NIT:I = 0x0

.field private static final AOD_BRIGHTNESS_30NIT:I = 0x2

.field private static final AOD_BRIGHTNESS_60NIT:I = 0x3

.field private static final DEBUG:Z

.field private static final DEFAULT_LIGHT_COLOR:Ljava/lang/String; = "00ff00"

.field private static final TAG:Ljava/lang/String; = "BSS_InDisplaySensorHelper"

.field public static final TIME_DOZE_RESET:I = 0x2710

.field public static final TIME_DOZE_RESET_EXTRA:I = 0x3e8


# instance fields
.field private mAodBrightnessValues:[I

.field private mBrightnessNitForOptical:F

.field private mContext:Landroid/content/Context;

.field private mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNitsForOptical:F

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "BSS_InDisplaySensorHelper:P"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/16 v1, 0x80

    const-string v3, "BSS_InDisplaySensorHelper:D"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/hardware/fingerprint/IFingerprintService;->semGetInDisplaySensorInfo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InDisplaySensorHelper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BSS_InDisplaySensorHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;-><init>(Landroid/os/Bundle;Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_1

    const v2, 0x439f8000    # 319.0f

    const-string v3, "brightness"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mBrightnessNitForOptical:F

    const v2, 0x44034000    # 525.0f

    const-string v3, "lightColor"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mNitsForOptical:F

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpCalibrationMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "nits"

    const-string v5, "00ff00"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->setLightColorForCalibration(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->setAodBrightnessValues()V

    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getNitForAod(I)F
    .locals 1

    const/high16 v0, 0x42700000    # 60.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x40000000    # 2.0f

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAodBrightnessValues()V
    .locals 9

    const-string v0, "BSS_InDisplaySensorHelper"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_aodBrightnessValues"

    const-string v3, "array"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    const-string v4, "setAodBrightnessValues: "

    const-string v5, ","

    const/4 v6, 0x0

    if-ge v2, v3, :cond_2

    :try_start_1
    const-string v2, "setAodBrightnessValues: not matched!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget v8, v3, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    goto :goto_2

    :cond_2
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_3

    aget v8, v3, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "Fail to get service array"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public acquireWakeLock(J)V
    .locals 4

    const-string v0, "BSS_InDisplaySensorHelper"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock: p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock: d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public createAodStatusListener(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public createSensorIconOptionListener()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    return-void
.end method

.method public getBrightnessNitForOptical()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mBrightnessNitForOptical:F

    return v0
.end method

.method public getCurrentNitForAOD(F)F
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    if-nez v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getNitForAod(I)F

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mAodBrightnessValues:[I

    aget v3, v2, v1

    if-eqz v3, :cond_1

    aget v2, v2, v1

    int-to-float v2, v2

    div-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getNitForAod(I)F

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    const/16 v1, 0x3c

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :goto_2
    int-to-float v0, v1

    :cond_4
    return v0
.end method

.method public getNitsForOptical()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mNitsForOptical:F

    return v0
.end method

.method public getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    return-object v0
.end method

.method public releaseWakeLock()V
    .locals 4

    const-string v0, "BSS_InDisplaySensorHelper"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock: p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock: d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
