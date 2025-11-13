.class public abstract Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final baseType:Ljava/lang/Class;

.field public final mItems:Ljava/util/List;

.field public final query:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->query:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract getItemColumns()[Ljava/lang/String;
.end method

.method public abstract getResultType()Ljava/lang/String;
.end method

.method public abstract transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
.end method
