.class public Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextDualDisplayAngleAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextDualDisplayAngleAttribute"


# instance fields
.field private blacklist mOffAngle:I

.field private blacklist mOnAngle:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    iput p1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iput p2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const-string v2, "onAngle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    const-string v3, "offAngle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAngle : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SContextDualDisplayAngleAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offAngle : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/4 v1, 0x0

    const-string v2, "SContextDualDisplayAngleAttribute"

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v3, 0x168

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iget v3, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v0, v3, :cond_2

    const-string v0, "onAngle is above offAngle!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const-string v0, "Value of offAngle is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    const-string v0, "Value of onAngle is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
