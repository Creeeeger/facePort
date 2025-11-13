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

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    iput p1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    iput p2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sensibility"

    iget v2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sampling_interval"

    iget v2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    const/4 v1, 0x0

    const-string v2, "SContextSleepMonitorAttribute"

    if-gez v0, :cond_0

    const-string v0, "The sensibility is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    if-gez v0, :cond_1

    const-string v0, "The sampling interval is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getSamplingInterval()I
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    return v0
.end method

.method public blacklist getSensibility()I
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    return v0
.end method
