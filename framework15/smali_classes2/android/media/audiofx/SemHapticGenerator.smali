.class public Landroid/media/audiofx/SemHapticGenerator;
.super Landroid/media/audiofx/AudioEffect;
.source "SemHapticGenerator.java"


# static fields
.field public static final blacklist EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

.field private static final blacklist TAG:Ljava/lang/String; = "SemHapticGenerator"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    nop

    const-string v0, "2d43d8b6-1861-43d9-8eda-11f63bef2233"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 3

    sget-object v0, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method

.method public static blacklist create(I)Landroid/media/audiofx/SemHapticGenerator;
    .locals 1

    new-instance v0, Landroid/media/audiofx/SemHapticGenerator;

    invoke-direct {v0, p0}, Landroid/media/audiofx/SemHapticGenerator;-><init>(I)V

    return-object v0
.end method

.method public static blacklist isAvailable()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist setEnabled(Z)I
    .locals 1

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method
