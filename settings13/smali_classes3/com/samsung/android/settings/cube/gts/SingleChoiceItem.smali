.class public Lcom/samsung/android/settings/cube/gts/SingleChoiceItem;
.super Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;
.source "SingleChoiceItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;-><init>()V

    return-void
.end method

.method private final findEntryWithEntryValue(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 43
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget-object p0, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SINGLE_CHOICE EntryName : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method protected buildExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 3

    const-string v0, "entries"

    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getAttributeArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "entryValues"

    .line 21
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getAttributeArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/cube/gts/SingleChoiceItem;->findEntryWithEntryValue(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setSubTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->build()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isValidControlValue(Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 0

    const-string p0, "entries"

    .line 33
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "entryValues"

    .line 34
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
