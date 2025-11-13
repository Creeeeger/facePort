.class public Lcom/samsung/android/settings/cube/gts/CustomItem;
.super Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlValue:Lcom/samsung/android/settings/cube/ControlValue;

    iget-object v1, v0, Lcom/samsung/android/settings/cube/ControlValue;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mStorePackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreApp;

    invoke-direct {v2, v0}, Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreApp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->addStoreContent(Lcom/samsung/android/gtscell/data/GtsStoreContent;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->mControlData:Lcom/samsung/android/settings/cube/index/ControlData;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setSubTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->build()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method public final isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
