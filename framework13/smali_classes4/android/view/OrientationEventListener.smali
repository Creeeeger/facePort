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

.field public static final whitelist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mOldListener:Landroid/view/OrientationListener;

.field private greylist-max-o mOrientation:I

.field private greylist-max-o mRate:I

.field private greylist-max-o mSensor:Landroid/hardware/Sensor;

.field private greylist-max-o mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private greylist-max-o mSensorManager:Landroid/hardware/SensorManager;


# direct methods
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

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

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
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 76
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 77
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 79
    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 85
    :cond_0
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private blacklist isInAppCastingDisplay()Z
    .locals 3

    .line 174
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    return v1

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 178
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public whitelist canDetectOrientation()Z
    .locals 1

    .line 186
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

    .line 114
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 123
    :cond_1
    return-void
.end method

.method public whitelist enable()V
    .locals 4

    .line 99
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 103
    :cond_0
    iget-boolean v1, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 108
    :cond_1
    return-void
.end method

.method public abstract whitelist onOrientationChanged(I)V
.end method

.method greylist-max-o registerListener(Landroid/view/OrientationListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/view/OrientationListener;

    .line 91
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 92
    return-void
.end method
