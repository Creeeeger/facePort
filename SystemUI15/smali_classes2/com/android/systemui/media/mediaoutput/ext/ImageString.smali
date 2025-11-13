.class public final Lcom/android/systemui/media/mediaoutput/ext/ImageString;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final image:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final resId:I

.field public final selection:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->resId:I

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->selection:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->image:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    const/16 p0, 0x21

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/ext/ImageString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/ext/ImageString;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->resId:I

    iget v3, p1, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->resId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->selection:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->selection:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->image:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->image:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->resId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->selection:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->image:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final bridge length()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->resId:I

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->selection:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->image:Landroidx/compose/ui/graphics/vector/ImageVector;

    const-string v2, "ImageString(resId="

    const-string v3, ", selection="

    const-string v4, ", image="

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
