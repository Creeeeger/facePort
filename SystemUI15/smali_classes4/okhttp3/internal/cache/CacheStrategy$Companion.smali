.class public final Lokhttp3/internal/cache/CacheStrategy$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Companion;-><init>()V

    return-void
.end method

.method public static isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 3

    iget v0, p1, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return v2

    :cond_0
    :pswitch_0
    iget-object v0, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    const/4 v1, -0x1

    iget v0, v0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    iget-boolean v0, v0, Lokhttp3/CacheControl;->isPublic:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    iget-boolean v0, v0, Lokhttp3/CacheControl;->isPrivate:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    :pswitch_1
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p1

    iget-boolean p1, p1, Lokhttp3/CacheControl;->noStore:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez p1, :cond_3

    sget-object p1, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-static {p1}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_3
    iget-boolean p0, p1, Lokhttp3/CacheControl;->noStore:Z

    if-nez p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
