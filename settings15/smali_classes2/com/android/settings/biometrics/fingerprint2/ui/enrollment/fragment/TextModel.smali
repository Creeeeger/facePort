.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final footerMessageFive:I

.field public final footerMessageFour:I

.field public final footerMessageSix:I

.field public final footerMessageThree:I

.field public final footerMessageTwo:I

.field public final footerTitleOne:I

.field public final headerText:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageTwo:I

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageThree:I

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFour:I

    iput p4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFive:I

    iput p5, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageSix:I

    iput p6, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    iput p7, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->headerText:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    iget v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageTwo:I

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageTwo:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageThree:I

    iget v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageThree:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFour:I

    iget v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFour:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFive:I

    iget v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFive:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageSix:I

    iget v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageSix:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    iget v3, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->headerText:I

    iget p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->headerText:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageTwo:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageThree:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFour:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFive:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageSix:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    const v2, 0x7f142a08

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    const v2, 0x7f142a05

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->headerText:I

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result p0

    const v0, 0x7f142a0b

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextModel(footerMessageTwo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageTwo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", footerMessageThree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageThree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", footerMessageFour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", footerMessageFive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", footerMessageSix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageSix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", negativeButton=2132027912, footerTitleOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", footerTitleTwo=2132027909, headerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->headerText:I

    const-string v1, ", descriptionText=2132027915)"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
