.class public Landroid/hardware/scontext/SContextSleepMonitorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSleepMonitorAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextSleepMonitorAttribute"


# instance fields
.field private blacklist mSamplingInterval:I

.field private blacklist mSensibility:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    .line 39
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->setAttribute()V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "sensibility"    # I
    .param p2, "samplingInterval"    # I

    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    .line 57
    iput p2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    .line 58
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->setAttribute()V

    .line 59
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    const-string v2, "sensibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget v1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    const-string v2, "sampling_interval"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const/16 v1, 0x1d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    .line 83
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    const/4 v1, 0x0

    const-string v2, "SContextSleepMonitorAttribute"

    if-gez v0, :cond_0

    .line 84
    const-string v0, "The sensibility is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1

    .line 87
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    if-gez v0, :cond_1

    .line 88
    const-string v0, "The sampling interval is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 91
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getSamplingInterval()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    return v0
.end method

.method public blacklist getSensibility()I
    .locals 1

    .line 68
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    return v0
.end method
