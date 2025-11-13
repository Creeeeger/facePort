.class public Landroid/hardware/hdmi/DeviceFeatures;
.super Ljava/lang/Object;
.source "DeviceFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/DeviceFeatures$Builder;,
        Landroid/hardware/hdmi/DeviceFeatures$FeatureSupportStatus;
    }
.end annotation


# static fields
.field public static final blacklist ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

.field public static final blacklist FEATURE_NOT_SUPPORTED:I = 0x0

.field public static final blacklist FEATURE_SUPPORTED:I = 0x1

.field public static final blacklist FEATURE_SUPPORT_UNKNOWN:I = 0x2

.field public static final blacklist NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;


# instance fields
.field private final blacklist mArcRxSupport:I

.field private final blacklist mArcTxSupport:I

.field private final blacklist mDeckControlSupport:I

.field private final blacklist mRecordTvScreenSupport:I

.field private final blacklist mSetAudioRateSupport:I

.field private final blacklist mSetAudioVolumeLevelSupport:I

.field private final blacklist mSetOsdStringSupport:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smupdateFeatureSupportStatus(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures;->updateFeatureSupportStatus(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    sput-object v0, Landroid/hardware/hdmi/DeviceFeatures;->ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    sput-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmRecordTvScreenSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmOsdStringSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmDeckControlSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmSetAudioRateSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmArcTxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmArcRxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmSetAudioVolumeLevelSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;Landroid/hardware/hdmi/DeviceFeatures-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures;-><init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;)V

    return-void
.end method

.method private static blacklist bitToFeatureSupportStatus(Z)I
    .locals 0

    return p0
.end method

.method private static blacklist featureSupportStatusToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "?"

    return-object v0

    :pswitch_0
    const-string v0, "Y"

    return-object v0

    :pswitch_1
    const-string v0, "N"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;
    .locals 6

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_7

    const/4 v1, 0x0

    aget-byte v3, p0, v1

    shr-int/lit8 v4, v3, 0x6

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v4}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setRecordTvScreenSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetOsdStringSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setDeckControlSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioRateSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcTxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_5

    move v5, v2

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v2, :cond_6

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    invoke-static {v2}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    :cond_7
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist updateFeatureSupportStatus(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/hardware/hdmi/DeviceFeatures;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/DeviceFeatures;

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getArcRxSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    return v0
.end method

.method public blacklist getArcTxSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    return v0
.end method

.method public blacklist getDeckControlSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    return v0
.end method

.method public blacklist getRecordTvScreenSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    return v0
.end method

.method public blacklist getSetAudioRateSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    return v0
.end method

.method public blacklist getSetAudioVolumeLevelSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    return v0
.end method

.method public blacklist getSetOsdStringSupport()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .locals 2

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(Landroid/hardware/hdmi/DeviceFeatures;Landroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    return-object v0
.end method

.method public blacklist toOperand()[B
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    :cond_0
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    if-ne v1, v2, :cond_1

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_1
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    if-ne v1, v2, :cond_2

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_2
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    if-ne v1, v2, :cond_3

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_3
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    if-ne v1, v2, :cond_4

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_4
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    if-ne v1, v2, :cond_5

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_5
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    if-ne v1, v2, :cond_6

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_6
    new-array v1, v2, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device features: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "record_tv_screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    invoke-static {v2}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_osd_string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deck_control: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_audio_rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "arc_tx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "arc_rx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_audio_volume_level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
