.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEVICEINFO_COVER_DISPLAY_ON:I = 0x1

.field private static final blacklist DEVICEINFO_FOLDER_OPEN:I = 0x0

.field private static final blacklist DEVICEINFO_TABLE_MODE:I = 0x1

.field private static final blacklist DEVICEINFO_TYPE_FLIP_COVERDISP:I = 0x3

.field public static final whitelist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final greylist-max-o localLOGV:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceInfoListener:Landroid/hardware/SensorEventListener;

.field private blacklist mDeviceInfoSensor:Landroid/hardware/Sensor;

.field private greylist-max-o mEnabled:Z

.field private blacklist mNotSupportReversePortrait:Z

.field private greylist-max-o mOldListener:Landroid/view/OrientationListener;

.field private greylist-max-o mOrientation:I

.field private greylist-max-o mRate:I

.field private greylist-max-o mSensor:Landroid/hardware/Sensor;

.field private greylist-max-o mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private greylist-max-o mSensorManager:Landroid/hardware/SensorManager;

.field private blacklist mTableMode:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNotSupportReversePortrait(Landroid/view/OrientationEventListener;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/OrientationEventListener;->mNotSupportReversePortrait:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .locals 0

    iget-object p0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I
    .locals 0

    iget p0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTableMode(Landroid/view/OrientationEventListener;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTableMode(Landroid/view/OrientationEventListener;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misInAppCastingDisplay(Landroid/view/OrientationEventListener;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/OrientationEventListener;->isInAppCastingDisplay()Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mNotSupportReversePortrait:Z

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10071

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "supports device_common_info"

    const-string v1, "OrientationEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "whatsapp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Package does not support reverse-portrait"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mNotSupportReversePortrait:Z

    :cond_0
    new-instance v0, Landroid/view/OrientationEventListener$1;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$1;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    :cond_1
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist isInAppCastingDisplay()Z
    .locals 4

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public whitelist canDetectOrientation()Z
    .locals 1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist disable()V
    .locals 2

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    :cond_2
    return-void
.end method

.method public whitelist enable()V
    .locals 4

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mTableMode:Z

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mDeviceInfoListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    :cond_2
    return-void
.end method

.method public abstract whitelist onOrientationChanged(I)V
.end method

.method greylist-max-o registerListener(Landroid/view/OrientationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-void
.end method
