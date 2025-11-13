.class public final Lcom/samsung/android/sdk/command/template/SliderTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCurrentValue:F

.field public final mFormatString:Ljava/lang/CharSequence;

.field public final mMaxValue:F

.field public final mMinValue:F

.field public final mStepValue:F


# direct methods
.method public constructor <init>(FFFFLjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "range"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    iput p2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    iput p3, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    iput p4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string p1, "%.1f"

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->validate()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_min_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    const-string v0, "key_max_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    const-string v0, "key_current_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    const-string v0, "key_step_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    const-string v0, "key_format_string"

    const-string v1, "%.1f"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->validate()V

    return-void
.end method


# virtual methods
.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_min_value"

    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_max_value"

    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_current_value"

    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_step_value"

    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_format_string"

    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final getTemplateType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final validate()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gtz v3, :cond_2

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    cmpg-float v0, p0, v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "stepValue=%f <= 0"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "currentValue=%f > maxValue=%f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "minValue=%f > currentValue=%f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "minValue=%f > maxValue=%f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
