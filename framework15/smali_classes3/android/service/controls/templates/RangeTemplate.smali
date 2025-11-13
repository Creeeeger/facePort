.class public final Landroid/service/controls/templates/RangeTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "RangeTemplate.java"


# static fields
.field private static final blacklist KEY_CURRENT_VALUE:Ljava/lang/String; = "key_current_value"

.field private static final blacklist KEY_FORMAT_STRING:Ljava/lang/String; = "key_format_string"

.field private static final blacklist KEY_MAX_VALUE:Ljava/lang/String; = "key_max_value"

.field private static final blacklist KEY_MIN_VALUE:Ljava/lang/String; = "key_min_value"

.field private static final blacklist KEY_STEP_VALUE:Ljava/lang/String; = "key_step_value"

.field private static final blacklist TYPE:I = 0x2


# instance fields
.field private final blacklist mCurrentValue:F

.field private final blacklist mFormatString:Ljava/lang/CharSequence;

.field private final blacklist mMaxValue:F

.field private final blacklist mMinValue:F

.field private final blacklist mStepValue:F


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_min_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    const-string/jumbo v0, "key_max_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    const-string/jumbo v0, "key_current_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    const-string/jumbo v0, "key_step_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    const-string/jumbo v0, "key_format_string"

    const-string v1, "%.1f"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/service/controls/templates/RangeTemplate;->validate()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;FFFFLjava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    iput p3, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    iput p4, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    iput p5, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    if-eqz p6, :cond_0

    iput-object p6, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, "%.1f"

    iput-object v0, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    :goto_0
    invoke-direct {p0}, Landroid/service/controls/templates/RangeTemplate;->validate()V

    return-void
.end method

.method private blacklist validate()V
    .locals 3

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_2

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "stepValue=%f <= 0"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "currentValue=%f > maxValue=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "minValue=%f > currentValue=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "minValue=%f > maxValue=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getCurrentValue()F
    .locals 1

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    return v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_min_value"

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "key_max_value"

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "key_current_value"

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "key_step_value"

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "key_format_string"

    iget-object v2, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public whitelist getFormatString()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getMaxValue()F
    .locals 1

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    return v0
.end method

.method public whitelist getMinValue()F
    .locals 1

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    return v0
.end method

.method public whitelist getStepValue()F
    .locals 1

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    return v0
.end method

.method public whitelist getTemplateType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
