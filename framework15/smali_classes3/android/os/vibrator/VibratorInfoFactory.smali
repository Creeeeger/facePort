.class public final Landroid/os/vibrator/VibratorInfoFactory;
.super Ljava/lang/Object;
.source "VibratorInfoFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;
    .locals 2

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v0, p0}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    return-object v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/os/VibratorInfo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Landroid/os/VibratorInfo;-><init>(ILandroid/os/VibratorInfo;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/os/vibrator/MultiVibratorInfo;

    invoke-direct {v0, p0, p1}, Landroid/os/vibrator/MultiVibratorInfo;-><init>(I[Landroid/os/VibratorInfo;)V

    return-object v0
.end method
