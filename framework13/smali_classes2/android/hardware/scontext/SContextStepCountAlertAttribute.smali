.class public Landroid/hardware/scontext/SContextStepCountAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextStepCountAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextStepCountAlertAttribute"


# instance fields
.field private blacklist mStepCount:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->setAttribute()V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "stepCount"    # I

    .line 54
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    .line 55
    iput p1, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    .line 56
    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->setAttribute()V

    .line 57
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 4

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "attribute":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v1, "attribute2":Landroid/os/Bundle;
    iget v2, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    const-string/jumbo v3, "step_count"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const/4 v2, 0x3

    invoke-super {p0, v2, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 84
    iget v2, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    const-string v3, "interrupt_gyro"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const/16 v2, 0x30

    invoke-super {p0, v2, v1}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 87
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 72
    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    if-gez v0, :cond_0

    .line 73
    const-string v0, "SContextStepCountAlertAttribute"

    const-string v1, "The step count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStepCount()I
    .locals 1

    .line 66
    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    return v0
.end method
