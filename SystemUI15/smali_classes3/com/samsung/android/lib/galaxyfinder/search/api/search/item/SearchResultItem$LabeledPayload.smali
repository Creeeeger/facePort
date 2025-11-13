.class public final Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final label:Ljava/lang/String;

.field public final payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem$LabeledPayload;-><init>(Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;)V

    return-void
.end method
