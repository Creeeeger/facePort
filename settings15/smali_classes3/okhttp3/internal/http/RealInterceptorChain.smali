.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final call:Lokhttp3/RealCall;

.field public calls:I

.field public final connectTimeout:I

.field public final exchange:Lokhttp3/internal/connection/Exchange;

.field public final index:I

.field public final interceptors:Ljava/util/List;

.field public final readTimeout:I

.field public final request:Lokhttp3/Request;

.field public final transmitter:Lokhttp3/internal/connection/Transmitter;

.field public final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/RealCall;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iput-object p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    iput p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    iput-object p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    iput-object p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/RealCall;

    iput p7, p0, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iput p8, p0, Lokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iput p9, p0, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    return-void
.end method


# virtual methods
.method public final proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->transmitter:Lokhttp3/internal/connection/Transmitter;

    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public final proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    if-ge v2, v1, :cond_8

    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Lokhttp3/internal/connection/Exchange;

    const-string v4, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v5, v1, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v5}, Lokhttp3/internal/http/ExchangeCodec;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v5

    move-object/from16 v11, p1

    iget-object v6, v11, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v5, v6}, Lokhttp3/internal/connection/RealConnection;->supportsUrl(Lokhttp3/HttpUrl;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v11, p1

    :goto_0
    const-string v5, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    if-gt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    new-instance v1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v15, v0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    add-int/lit8 v14, v2, 0x1

    iget-object v12, v0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/RealCall;

    iget v13, v0, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeout:I

    iget v10, v0, Lokhttp3/internal/http/RealInterceptorChain;->readTimeout:I

    iget v9, v0, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeout:I

    move-object v6, v1

    move-object v7, v15

    move-object/from16 v8, p2

    move/from16 v16, v9

    move-object/from16 v9, p3

    move/from16 v17, v10

    move v10, v14

    move-object/from16 v11, p1

    move v3, v14

    move/from16 v14, v17

    move-object/from16 v17, v5

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/RealCall;III)V

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    invoke-interface {v2, v1}, Lokhttp3/Interceptor;->intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;

    move-result-object v5

    if-eqz p3, :cond_5

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget v0, v1, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const-string v0, "interceptor "

    if-eqz v5, :cond_7

    iget-object v1, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v1, :cond_6

    return-object v5

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
