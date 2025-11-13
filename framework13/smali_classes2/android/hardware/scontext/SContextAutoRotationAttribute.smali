.class public Landroid/hardware/scontext/SContextAutoRotationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoRotationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextAutoRotationAttribute"


# instance fields
.field private blacklist mDeviceType:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 58
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 63
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 66
    const-string v0, "SContextAutoRotationAttribute"

    const-string v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
