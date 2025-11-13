.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final body:Lokhttp3/ResponseBody;

.field public final cacheResponse:Lokhttp3/Response;

.field public final code:I

.field public final exchange:Lokhttp3/internal/connection/Exchange;

.field public final handshake:Lokhttp3/Handshake;

.field public final headers:Lokhttp3/Headers;

.field public final message:Ljava/lang/String;

.field public final networkResponse:Lokhttp3/Response;

.field public final priorResponse:Lokhttp3/Response;

.field public final protocol:Lokhttp3/Protocol;

.field public final receivedResponseAtMillis:J

.field public final request:Lokhttp3/Request;

.field public final sentRequestAtMillis:J


# direct methods
.method public constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v0, p1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    iget v0, p1, Lokhttp3/Response$Builder;->code:I

    iput v0, p0, Lokhttp3/Response;->code:I

    iget-object v0, p1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    iget-object v0, p1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Headers;

    invoke-direct {v1, v0}, Lokhttp3/Headers;-><init>(Lokhttp3/Headers$Builder;)V

    iput-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    iget-object v0, p1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    iget-object v0, p1, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    iget-object v0, p1, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    iget-object v0, p1, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    iget-wide v0, p1, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    iget-wide v0, p1, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    iget-object p1, p1, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    iput-object p1, p0, Lokhttp3/Response;->exchange:Lokhttp3/internal/connection/Exchange;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "response is not eligible for a body and must not be closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget p0, p0, Lokhttp3/Response;->code:I

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final newBuilder()Lokhttp3/Response$Builder;
    .locals 3

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iput-object v1, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    iput-object v1, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    iget v1, p0, Lokhttp3/Response;->code:I

    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    iput-object v1, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    iput-object v1, v0, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;

    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    iget-object v1, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    iput-object v1, v0, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;

    iget-object v1, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    iput-object v1, v0, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    iget-object v1, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    iput-object v1, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    iget-object v1, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    iput-object v1, v0, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;

    iget-wide v1, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v1, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v1, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v1, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    iget-object p0, p0, Lokhttp3/Response;->exchange:Lokhttp3/internal/connection/Exchange;

    iput-object p0, v0, Lokhttp3/Response$Builder;->exchange:Lokhttp3/internal/connection/Exchange;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
