.class public Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextStepLevelMonitorAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextStepLevelMonitorAttribute"


# instance fields
.field private blacklist mDuration:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    iput p1, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    iget v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;->mDuration:I

    if-gez v0, :cond_0

    const-string v0, "SContextStepLevelMonitorAttribute"

    const-string v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
