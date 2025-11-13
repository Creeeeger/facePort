.class public Lcom/samsung/android/media/AudioFxHelper;
.super Ljava/lang/Object;
.source "AudioFxHelper.java"


# static fields
.field public static final blacklist KEY_SITUATION_VOLUME_TOUCH_TONE:Ljava/lang/String; = "stv_touch_tone"

.field private static final blacklist TAG:Ljava/lang/String; = "AudioFxHelper"

.field private static final blacklist sPreDefinedVolumeEffects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSoundEffectVolume:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/media/AudioFxHelper;->sSoundEffectVolume:F

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/media/AudioFxHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    .line 39
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPlaySoundTypeForSEP(I)I
    .locals 1
    .param p0, "effectType"    # I

    .line 52
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6a

    if-gt p0, v0, :cond_0

    .line 54
    add-int/lit8 v0, p0, -0x63

    add-int/lit8 p0, v0, 0xf

    .line 57
    :cond_0
    return p0
.end method

.method public static blacklist getSoundFxVolumeByType(I)F
    .locals 3
    .param p0, "type"    # I

    .line 62
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 63
    const-string v1, "g_volume_situation_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 66
    const-string v1, "device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 69
    .local v0, "parameters":Lcom/samsung/android/media/AudioParameter;
    sget-object v1, Lcom/samsung/android/media/AudioFxHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 73
    :cond_0
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v1, :cond_1

    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 77
    :cond_1
    sget v1, Lcom/samsung/android/media/AudioFxHelper;->sSoundEffectVolume:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 78
    return v1

    .line 82
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/samsung/android/media/AudioFxHelper;->sSoundEffectVolume:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 86
    :goto_0
    sget v1, Lcom/samsung/android/media/AudioFxHelper;->sSoundEffectVolume:F

    return v1
.end method

.method public static blacklist isPreDefinedEffectKey(I)Z
    .locals 2
    .param p0, "x"    # I

    .line 111
    sget-object v0, Lcom/samsung/android/media/AudioFxHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist setSoundEffectVolume()V
    .locals 3

    .line 95
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 96
    const-string v1, "g_volume_situation_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 99
    const-string v1, "device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 103
    .local v0, "parameter":Lcom/samsung/android/media/AudioParameter;
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/media/AudioFxHelper;->setSoundFxVolume(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public static blacklist setSoundFxVolume(F)V
    .locals 2
    .param p0, "volume"    # F

    .line 90
    sput p0, Lcom/samsung/android/media/AudioFxHelper;->sSoundEffectVolume:F

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set sound effect volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/media/AudioFxHelper;->sSoundEffectVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFxHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
