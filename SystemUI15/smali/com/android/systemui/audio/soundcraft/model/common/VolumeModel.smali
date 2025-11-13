.class public final Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final device:I

.field public final enable:Z

.field public final isAllSoundMute:Z

.field public final isBroadcast:Z

.field public final isDisallowAdjustVolume:Z

.field public final isMusicShareEnabled:Z

.field public final isSmartViewEnabled:Z

.field public final isZenMode:I

.field public final isZenModeDisabled:Z

.field public final maxVolume:I

.field public final minVolume:I

.field public final volume:I


# direct methods
.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIZZZIZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    iput p2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    iput p3, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    iput p4, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    iput-boolean p5, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    iput-boolean p6, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    iput-boolean p7, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    iput p8, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    iput-boolean p9, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    iput-boolean p10, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    iput-boolean p11, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    iput-boolean p12, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIZZZIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0x96

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v3

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v3

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v3

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move v12, v3

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v3, p12

    :goto_b
    move p1, v1

    move p2, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v3

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    iget v3, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    iget v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    iget v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    iget v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    iget v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    iget-boolean p1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolumeModel(volume="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->minVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->maxVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAllSoundMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isAllSoundMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isZenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isZenModeDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isZenModeDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSmartViewEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isSmartViewEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMusicShareEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isMusicShareEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisallowAdjustVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isDisallowAdjustVolume:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
