.class public Lcom/samsung/android/settings/cube/gts/IntentItem;
.super Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.source "IntentItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setSubTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

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
