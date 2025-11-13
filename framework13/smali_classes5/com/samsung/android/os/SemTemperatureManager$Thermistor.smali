.class public Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemTemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thermistor"
.end annotation


# static fields
.field private static final blacklist NUM_OF_TYPE:I = 0xa

.field public static final whitelist TYPE_5G_MODEM:I = 0x6

.field public static final whitelist TYPE_AP:I = 0x0

.field public static final whitelist TYPE_BATTERY:I = 0x1

.field public static final whitelist TYPE_CAMERA_FLASH:I = 0x7

.field public static final whitelist TYPE_CHARGER:I = 0x2

.field public static final whitelist TYPE_PAM:I = 0x5

.field public static final whitelist TYPE_PREDICTED_SURFACE:I = 0x9

.field public static final blacklist TYPE_TABLET_COOL_AREA:I = 0x8

.field public static final whitelist TYPE_USB:I = 0x3

.field public static final whitelist TYPE_WIFI:I = 0x4


# instance fields
.field private blacklist mType:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->mType:I

    .line 106
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/samsung/android/os/SemTemperatureManager$Thermistor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public whitelist getTemperature()I
    .locals 2

    .line 126
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->-$$Nest$smgetService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 128
    .local v0, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget v1, p0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->mType:I

    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getTemperature(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v1, -0x3e7

    return v1
.end method

.method public whitelist getType()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->mType:I

    return v0
.end method
