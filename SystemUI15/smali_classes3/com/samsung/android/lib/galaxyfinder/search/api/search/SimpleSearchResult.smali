.class public final Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mResultType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->mResultType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getItemColumns()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getResultType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->mResultType:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "basic"

    :cond_0
    return-object p0
.end method

.method public final transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method
