.class public Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextEnvironmentAdaptiveDisplayAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextEnvironmentAdaptiveDisplayAttribute"


# instance fields
.field private blacklist mColorThreshold:F

.field private blacklist mDuration:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 32
    const/16 v0, 0x23

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .locals 1
    .param p1, "colorThreshold"    # F
    .param p2, "duration"    # I

    .line 54
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 32
    const/16 v0, 0x23

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 55
    iput p1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    .line 56
    iput p2, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    .line 58
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 5

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const-string v2, "color_threshold"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 77
    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAttribute() mColorThreshold : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SContextEnvironmentAdaptiveDisplayAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAttribute() mDuration : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/16 v1, 0x2c

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    .line 63
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "SContextEnvironmentAdaptiveDisplayAttribute"

    if-gez v0, :cond_0

    .line 64
    const-string v0, "The color threshold value is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v1

    .line 67
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    if-ltz v0, :cond_2

    const/16 v3, 0xff

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_2
    :goto_0
    const-string v0, "The duration value is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v1
.end method
