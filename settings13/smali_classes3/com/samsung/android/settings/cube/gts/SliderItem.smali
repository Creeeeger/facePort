.class public Lcom/samsung/android/settings/cube/gts/SliderItem;
.super Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.source "SliderItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setProgress(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object v0

    const-string v1, "min"

    .line 21
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setMin(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object v0

    const-string v1, "max"

    .line 22
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getAttributeInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setMax(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->addSubExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->build()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method protected isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "min"

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string p0, "max"

    .line 43
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
