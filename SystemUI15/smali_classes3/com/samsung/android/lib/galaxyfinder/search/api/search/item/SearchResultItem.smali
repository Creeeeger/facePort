.class public abstract Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actions:Ljava/util/List;

.field public final icon:Landroid/net/Uri;

.field public final itemKey:Ljava/lang/String;

.field public final payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

.field public final text:Ljava/lang/String;

.field public final text2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->actions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->itemKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text2:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->icon:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    if-eqz p5, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "view payload must be not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemKey must be not null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getActionLabel(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->actions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->label:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "fail to get action label: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultItem"

    invoke-static {p1, p0}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActionPayloadStr(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->actions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->getStringFromPayload()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "fail to get action payload: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultItem"

    invoke-static {p1, p0}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getGroup()Ljava/lang/String;
.end method
