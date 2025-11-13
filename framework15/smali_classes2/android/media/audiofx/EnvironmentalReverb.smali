.class public Landroid/media/audiofx/EnvironmentalReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "EnvironmentalReverb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;,
        Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;,
        Landroid/media/audiofx/EnvironmentalReverb$Settings;
    }
.end annotation


# static fields
.field public static final whitelist PARAM_DECAY_HF_RATIO:I = 0x3

.field public static final whitelist PARAM_DECAY_TIME:I = 0x2

.field public static final whitelist PARAM_DENSITY:I = 0x9

.field public static final whitelist PARAM_DIFFUSION:I = 0x8

.field private static final greylist-max-o PARAM_PROPERTIES:I = 0xa

.field public static final whitelist PARAM_REFLECTIONS_DELAY:I = 0x5

.field public static final whitelist PARAM_REFLECTIONS_LEVEL:I = 0x4

.field public static final whitelist PARAM_REVERB_DELAY:I = 0x7

.field public static final whitelist PARAM_REVERB_LEVEL:I = 0x6

.field public static final whitelist PARAM_ROOM_HF_LEVEL:I = 0x1

.field public static final whitelist PARAM_ROOM_LEVEL:I = 0x0

.field private static greylist-max-o PROPERTY_SIZE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EnvironmentalReverb"


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

.field private greylist-max-o mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    sput v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist getDecayHFRatio()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getDecayTime()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public whitelist getDensity()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getDiffusion()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getProperties()Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    new-array v0, v0, [B

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    new-instance v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/EnvironmentalReverb$Settings;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v3

    iput v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    const/16 v3, 0x8

    invoke-static {v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    const/16 v1, 0x12

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    return-object v2
.end method

.method public whitelist getReflectionsDelay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public whitelist getReflectionsLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getReverbDelay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public whitelist getReverbLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getRoomHFLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist getRoomLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public whitelist setDecayHFRatio(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setDecayTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setDensity(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setDiffusion(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    new-instance v1, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener-IA;)V

    iput-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setProperties(Landroid/media/audiofx/EnvironmentalReverb$Settings;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v1

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v2

    iget v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v3

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v4

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v5

    iget v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v6

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v7

    iget v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v8

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v9

    iget-short v0, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiofx/EnvironmentalReverb;->concatArrays([[B)[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setReflectionsDelay(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setReflectionsLevel(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setReverbDelay(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setReverbLevel(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setRoomHFLevel(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public whitelist setRoomLevel(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method
