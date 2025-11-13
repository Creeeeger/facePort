.class public final Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public primaryColor:I

.field public final progressColor:I

.field public final remainTrackBorderColor:I

.field public final remainTrackColor:I

.field public secondaryColor:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    iput p2, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    iput p3, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    iput p4, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    iput p5, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    return-void
.end method

.method public constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxPrimaryColor:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxSecondaryColor:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->progressTrackColor:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p4, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackColor:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackBorderColor:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    iget v3, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    iget p1, p1, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    const-string v2, "AudioVisSeekBarConfig(primaryColor="

    const-string v3, ", secondaryColor="

    const-string v4, ", progressColor="

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->progressColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainTrackColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainTrackBorderColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->remainTrackBorderColor:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
