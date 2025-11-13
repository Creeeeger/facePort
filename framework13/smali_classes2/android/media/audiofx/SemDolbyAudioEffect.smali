.class public Landroid/media/audiofx/SemDolbyAudioEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "SemDolbyAudioEffect.java"


# static fields
.field public static final blacklist EFFECT_PARAM_EFF_ENAB:I = 0x13

.field public static final blacklist EFFECT_PARAM_PROFILE:I = 0x0

.field public static final blacklist EFFECT_PARAM_STEREO_WIDENING_DISTANCE:I = 0x1

.field public static final whitelist EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_DOLBY_GAME_AUDIO_PROCESSING:Ljava/util/UUID;

.field public static final whitelist PROFILE_AUTO:I = 0x0

.field public static final whitelist PROFILE_GAME:I = 0x4

.field public static final blacklist PROFILE_GAME_1:I = 0x6

.field public static final blacklist PROFILE_GAME_2:I = 0x7

.field public static final whitelist PROFILE_MOVIE:I = 0x1

.field public static final whitelist PROFILE_MUSIC:I = 0x2

.field public static final blacklist PROFILE_OFF:I = 0x5

.field public static final blacklist PROFILE_SPACIAL_AUDIO:I = 0x8

.field public static final whitelist PROFILE_VOICE:I = 0x3

.field public static final blacklist STEREO_WIDENING_DISTANCE_DEFAULT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemDolbyAudioEffect"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    nop

    .line 49
    const-string v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    .line 53
    nop

    .line 54
    const-string v0, "4f81d40e-05e2-47eb-9a0a-3686daf37649"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_GAME_AUDIO_PROCESSING:Ljava/util/UUID;

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 154
    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 156
    if-nez p2, :cond_0

    .line 157
    const-string v0, "SemDolbyAudioEffect"

    const-string v1, "WARNING: attaching a SemDolbyAudioEffect to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;II)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "priority"    # I
    .param p3, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 178
    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 180
    if-nez p3, :cond_0

    .line 181
    const-string v0, "SemDolbyAudioEffect"

    const-string v1, "WARNING: attaching a SemDolbyAudioEffect to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void
.end method

.method public static blacklist isSupported()Z
    .locals 1

    .line 260
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DOLBY_ENABLED:Z

    return v0
.end method

.method public static whitelist isSupported(Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 267
    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DOLBY_ENABLED:Z

    return v0

    .line 269
    :cond_0
    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_GAME_AUDIO_PROCESSING:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DOLBY_GAME_FX:Z

    return v0

    .line 272
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist getProfile()I
    .locals 3

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 230
    .local v0, "value":[I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    .line 231
    aget v1, v0, v1

    return v1
.end method

.method public whitelist isProfileEnabled()Z
    .locals 4

    .line 203
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 204
    .local v1, "value":[I
    const/16 v2, 0x13

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    .line 205
    const/4 v2, 0x0

    aget v3, v1, v2

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist setProfile(I)V
    .locals 1
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 216
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 220
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    .line 221
    return-void

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist setProfileEnabled(Z)V
    .locals 2
    .param p1, "en"    # Z

    .line 193
    move v0, p1

    .line 194
    .local v0, "value":I
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    .line 195
    return-void
.end method

.method public blacklist setStereoWideningDistance(I)V
    .locals 1
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 246
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x40

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 250
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    .line 251
    return-void
.end method
