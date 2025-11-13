.class public Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextFlatMotionForTableModeAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextFlatMotionForTableModeAttribute"


# instance fields
.field private blacklist mDuration:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->setAttribute()V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 51
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 52
    iput p1, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 53
    invoke-direct {p0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->setAttribute()V

    .line 54
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const/16 v1, 0x24

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 59
    iget v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    if-gez v0, :cond_0

    .line 60
    const-string v0, "SContextFlatMotionForTableModeAttribute"

    const-string v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
