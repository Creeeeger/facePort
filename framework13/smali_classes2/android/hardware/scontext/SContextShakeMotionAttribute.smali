.class public Landroid/hardware/scontext/SContextShakeMotionAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextShakeMotionAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextShakeMotionAttribute"


# instance fields
.field private blacklist mDuration:I

.field private blacklist mStrength:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "strength"    # I
    .param p2, "duration"    # I

    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 57
    iput p2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 58
    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    .line 59
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    const-string/jumbo v2, "strength"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget v1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 3

    .line 64
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    const/4 v1, 0x0

    const-string v2, "SContextShakeMotionAttribute"

    if-gez v0, :cond_0

    .line 65
    const-string v0, "The strength is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v1

    .line 68
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 69
    const-string v0, "The duration is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
