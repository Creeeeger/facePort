.class public final Lcom/samsung/android/sdk/command/template/SliderTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "SliderTemplate.java"


# instance fields
.field private final mCurrentValue:F

.field private final mFormatString:Ljava/lang/CharSequence;

.field private final mMaxValue:F

.field private final mMinValue:F

.field private final mStepValue:F


# direct methods
.method public constructor <init>(FFFFLjava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "minValue",
            "maxValue",
            "currentValue",
            "stepValue",
            "formatString"
        }
    .end annotation

    const-string/jumbo v0, "range"

    .line 31
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    .line 34
    iput p2, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    .line 35
    iput p3, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    .line 36
    iput p4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    if-eqz p5, :cond_0

    .line 38
    iput-object p5, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string p1, "%.1f"

    .line 40
    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->validate()V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_min_value"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    const-string v0, "key_max_value"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    const-string v0, "key_current_value"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    const-string v0, "key_step_value"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    const-string v0, "key_format_string"

    const-string v1, "%.1f"

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->validate()V

    return-void
.end method

.method private validate()V
    .locals 5

    .line 127
    iget v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_3

    .line 131
    iget v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    iget v4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_2

    .line 135
    iget v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    iget v4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    .line 139
    iget v0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v3

    const-string/jumbo p0, "stepValue=%f <= 0"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    .line 137
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "currentValue=%f > maxValue=%f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    .line 133
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string/jumbo p0, "minValue=%f > currentValue=%f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    .line 129
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string/jumbo p0, "minValue=%f > maxValue=%f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 0

    .line 79
    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    return p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    const-string v2, "key_min_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 115
    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    const-string v2, "key_max_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 116
    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    const-string v2, "key_current_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 117
    iget v1, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mStepValue:F

    const-string v2, "key_step_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 118
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mFormatString:Ljava/lang/CharSequence;

    const-string v1, "key_format_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getMaxValue()F
    .locals 0

    .line 72
    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    return p0
.end method

.method public getMinValue()F
    .locals 0

    .line 65
    iget p0, p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    return p0
.end method

.method public getTemplateType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
