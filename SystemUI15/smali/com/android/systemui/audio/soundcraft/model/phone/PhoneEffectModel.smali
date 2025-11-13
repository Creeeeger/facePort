.class public final Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public dolbyIndex:I

.field public eqIndex:I

.field public spatialAudio:Z

.field public uhqUpscaler:Z

.field public voiceBoost:Z

.field public volumeNormalization:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;-><init>(IIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I

    iput p2, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    iput-boolean p3, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    iput-boolean p4, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z

    iput-boolean p5, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->uhqUpscaler:Z

    iput-boolean p6, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->spatialAudio:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;-><init>(IIZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I

    iget v3, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    iget v3, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->uhqUpscaler:Z

    iget-boolean v3, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->uhqUpscaler:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->spatialAudio:Z

    iget-boolean p1, p1, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->spatialAudio:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->uhqUpscaler:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->spatialAudio:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->dolbyIndex:I

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->eqIndex:I

    iget-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->voiceBoost:Z

    iget-boolean v3, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->volumeNormalization:Z

    iget-boolean v4, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->uhqUpscaler:Z

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/model/phone/PhoneEffectModel;->spatialAudio:Z

    const-string v5, "PhoneEffectModel(dolbyIndex="

    const-string v6, ", eqIndex="

    const-string v7, ", voiceBoost="

    invoke-static {v0, v1, v5, v6, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeNormalization="

    const-string v5, ", uhqUpscaler="

    invoke-static {v0, v2, v1, v3, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", spatialAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
