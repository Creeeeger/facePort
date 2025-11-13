.class public Landroid/hardware/scontext/SContextEnvironmentAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextEnvironmentAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextEnvironmentAttribute"


# instance fields
.field private blacklist mSensorType:I

.field private blacklist mUpdateInterval:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    .line 39
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;->setAttribute()V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "updateInterval"    # I

    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    .line 58
    iput p1, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    .line 59
    iput p2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    .line 60
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;->setAttribute()V

    .line 61
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    const-string v2, "sensor_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    const-string/jumbo v2, "update_interval"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const/16 v1, 0x8

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    .line 66
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    const/4 v1, 0x0

    const-string v2, "SContextEnvironmentAttribute"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 67
    const-string v0, "The sensor type is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v1

    .line 70
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    if-gez v0, :cond_1

    .line 71
    const-string v0, "The update interval is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v1

    .line 74
    :cond_1
    return v3
.end method
