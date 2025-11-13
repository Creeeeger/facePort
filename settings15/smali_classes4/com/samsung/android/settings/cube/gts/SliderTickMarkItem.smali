.class public Lcom/samsung/android/settings/cube/gts/SliderTickMarkItem;
.super Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    iget-object v0, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    invoke-virtual {v1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setLevel(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    const-string/jumbo v2, "min"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setMin(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    const-string v1, "max"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setMax(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setStep(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->addSubExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->build()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method public final isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "min"

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string p0, "max"

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
