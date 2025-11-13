.class public Lcom/samsung/android/settings/cube/gts/CustomItem;
.super Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.source "CustomItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getStorePackage()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    new-instance v2, Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreApp;

    invoke-direct {v2, v1}, Lcom/samsung/android/gtscell/data/GtsStoreContent$GalaxyStoreApp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->addStoreContent(Lcom/samsung/android/gtscell/data/GtsStoreContent;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setSubTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->build()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method protected isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
