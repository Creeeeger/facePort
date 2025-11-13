.class public Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
.super Landroid/media/audiofx/AudioEffect;
.source "SemVolumeMonitor.java"


# static fields
.field public static final blacklist EFFECT_TYPE_VOLUME_MONITOR:Ljava/util/UUID;

.field private static final blacklist PARAM_GET_ONE_MIN_SCORE_STATUS:I = 0x1

.field private static final blacklist PARAM_RESET_DATA:I = 0x5

.field private static final blacklist PARAM_SET_ABS_VOLUME_STATE:I = 0x4

.field private static final blacklist PARAM_SET_BT_VOL_INDEX:I = 0x2

.field private static final blacklist PARAM_SET_ON_OFF:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "SemVolumeMonitor"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const-string v0, "f15b944b-0202-451e-a6ff-c61f11beda02"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->EFFECT_TYPE_VOLUME_MONITOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->EFFECT_TYPE_VOLUME_MONITOR:Ljava/util/UUID;

    sget-object v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 72
    if-nez p2, :cond_0

    .line 73
    const-string v0, "SemVolumeMonitor"

    const-string v1, "WARNING: attaching an SemVolumeMonitor to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method private blacklist byteArrayToIntegerArray([B[Ljava/lang/Integer;)V
    .locals 5
    .param p1, "valuesIn"    # [B
    .param p2, "valuesOut"    # [Ljava/lang/Integer;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "inIndex":I
    const/4 v1, 0x0

    .line 174
    .local v1, "outIndex":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 175
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "outIndex":I
    .local v2, "outIndex":I
    invoke-static {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->byteArrayToInt([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    .line 176
    add-int/lit8 v0, v0, 0x4

    move v1, v2

    goto :goto_0

    .line 178
    .end local v2    # "outIndex":I
    .restart local v1    # "outIndex":I
    :cond_0
    array-length v2, p2

    if-ne v1, v2, :cond_1

    .line 182
    return-void

    .line 179
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "only converted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist integerArrayToByteArray([Ljava/lang/Integer;)[B
    .locals 5
    .param p1, "values"    # [Ljava/lang/Integer;

    .line 160
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 162
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 163
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    .end local v3    # "value":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getOneMinScoreStatus(II)[B
    .locals 6
    .param p1, "energyValueSizeInByte"    # I
    .param p2, "scoreValueSizeInByte"    # I

    .line 84
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    .line 85
    .local v0, "params":[Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v1

    .line 86
    .local v1, "paramBytes":[B
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 87
    .local v2, "valueSizeInByte":I
    new-array v3, v2, [B

    .line 88
    .local v3, "valueBytes":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOneHourRms: call getParameter. bytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=max("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemVolumeMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->getParameter([B[B)I

    .line 92
    const-string v4, "getOneHourRms: getParameter done"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v3
.end method

.method public blacklist onOff(Z)V
    .locals 7
    .param p1, "onOff"    # Z

    .line 121
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 122
    .local v1, "params":[Ljava/lang/Integer;
    move v2, p1

    .line 123
    .local v2, "iOnOff":I
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 124
    .local v0, "values":[Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v3

    .line 125
    .local v3, "paramBytes":[B
    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v4

    .line 127
    .local v4, "valueBytes":[B
    const-string v5, "SemVolumeMonitor"

    const-string v6, "onOff: call setParameter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I

    .line 129
    const-string v6, "onOff: setParameter done"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public blacklist resetData()V
    .locals 4

    .line 149
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v1

    .line 150
    .local v1, "paramBytes":[B
    new-array v2, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v0

    .line 151
    .local v0, "valueBytes":[B
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I

    .line 152
    return-void
.end method

.method public blacklist setAbsoluteVolumeState(Z)V
    .locals 5
    .param p1, "isAvrcpAbsVolSupported"    # Z

    .line 136
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 137
    .local v1, "params":[Ljava/lang/Integer;
    move v2, p1

    .line 138
    .local v2, "iOnOff":I
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 139
    .local v0, "values":[Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v3

    .line 140
    .local v3, "paramBytes":[B
    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v4

    .line 142
    .local v4, "valueBytes":[B
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I

    .line 143
    return-void
.end method

.method public blacklist setBluetoothVolume(I)V
    .locals 7
    .param p1, "volumeIndex"    # I

    .line 101
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 102
    .local v1, "params":[Ljava/lang/Integer;
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 103
    .local v0, "values":[Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v2

    .line 104
    .local v2, "paramBytes":[B
    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v3

    .line 106
    .local v3, "valueBytes":[B
    const-string v4, "SemVolumeMonitor"

    const-string/jumbo v5, "setBluetoothVolume: call setParameter"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v5

    .line 110
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "setBluetoothVolume#setParameter"

    invoke-static {v4, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const-string/jumbo v5, "setBluetoothVolume: setParameter done"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
