.class public final Lretrofit2/Response;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final body:Ljava/lang/Object;

.field public final errorBody:Lokhttp3/ResponseBody;

.field public final rawResponse:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    iput-object p2, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ResponseBody;

    return-void
.end method

.method public static success(Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;)Lretrofit2/Response;
    .locals 15

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    const/16 v1, 0xc8

    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    const-string v1, "OK"

    iput-object v1, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v1, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v14, "http://localhost/"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "ws:"

    move-object v2, v14

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v14, "http:p://localhost/"

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v11, "wss:"

    move-object v8, v14

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v14, "https:://localhost/"

    :cond_1
    :goto_0
    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    invoke-static {p0, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;
    .locals 2

    sget-object v0, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
