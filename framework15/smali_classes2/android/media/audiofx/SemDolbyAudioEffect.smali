.class public Landroid/media/audiofx/SemDolbyAudioEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "SemDolbyAudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/SemDolbyAudioEffect$DialogEnhancerType;
    }
.end annotation


# static fields
.field public static final whitelist DIALOG_ENHANCER_TYPE_IMPAIRED:I = 0x0

.field public static final whitelist DIALOG_ENHANCER_TYPE_NORMAL:I = 0x1

.field private static final blacklist EFFECT_PARAM_DIALOG_ENHANCER_AMOUNT:I = 0xa

.field private static final blacklist EFFECT_PARAM_DIALOG_ENHANCER_TYPE:I = 0xb

.field public static final blacklist EFFECT_PARAM_EFF_ENAB:I = 0x13

.field public static final blacklist EFFECT_PARAM_PROFILE:I = 0x0

.field private static final blacklist EFFECT_PARAM_REVERT_SPECIFIC_PARAMS:I = 0xc

.field public static final blacklist EFFECT_PARAM_STEREO_WIDENING_DISTANCE:I = 0x1

.field private static final blacklist EFFECT_PARAM_VOLUME_LEVELER_AMOUNT:I = 0x9

.field public static final whitelist EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_DOLBY_GAME_AUDIO_PROCESSING:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_DOLBY_SPATIALIZER_AUDIO_PROCESSING:Ljava/util/UUID;

.field public static final whitelist PROFILE_AUTO:I = 0x0

.field public static final whitelist PROFILE_GAME:I = 0x4

.field public static final blacklist PROFILE_GAME_1:I = 0x6

.field public static final blacklist PROFILE_GAME_2:I = 0x7

.field public static final whitelist PROFILE_MOVIE:I = 0x1

.field public static final whitelist PROFILE_MUSIC:I = 0x2

.field public static final blacklist PROFILE_OFF:I = 0x5

.field public static final blacklist PROFILE_SPATIAL_AUDIO:I = 0x8

.field public static final whitelist PROFILE_VOICE:I = 0x3

.field public static final blacklist STEREO_WIDENING_DISTANCE_DEFAULT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemDolbyAudioEffect"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    nop

    const-string v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    nop

    const-string v0, "4f81d40e-05e2-47eb-9a0a-3686daf37649"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_GAME_AUDIO_PROCESSING:Ljava/util/UUID;

    nop

    const-string v0, "ccd4cf09-a79d-46c2-9aae-06a1698d6c8f"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_SPATIALIZER_AUDIO_PROCESSING:Ljava/util/UUID;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    if-nez p2, :cond_0

    const-string v0, "SemDolbyAudioEffect"

    const-string v1, "WARNING: attaching a SemDolbyAudioEffect to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    if-nez p3, :cond_0

    const-string v0, "SemDolbyAudioEffect"

    const-string v1, "WARNING: attaching a SemDolbyAudioEffect to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static blacklist isSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DOLBY_ENABLED:Z

    return v0
.end method

.method public static whitelist isSupported(Ljava/util/UUID;)Z
    .locals 1

    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DOLBY_ENABLED:Z

    return v0

    :cond_0
    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_GAME_AUDIO_PROCESSING:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DOLBY_GAME_FX:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist getDialogEnhancerAmount()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public whitelist getDialogEnhancerType()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public whitelist getProfile()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    aget v1, v0, v1

    return v1
.end method

.method public whitelist getVolumeLevelerAmount()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public whitelist isProfileEnabled()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x13

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist revertSpecificParams()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void
.end method

.method public whitelist setDialogEnhancerAmount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void
.end method

.method public whitelist setDialogEnhancerType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist setProfile(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist setProfileEnabled(Z)V
    .locals 2

    move v0, p1

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void
.end method

.method public blacklist setStereoWideningDistance(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x40

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void
.end method

.method public whitelist setVolumeLevelerAmount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void
.end method
