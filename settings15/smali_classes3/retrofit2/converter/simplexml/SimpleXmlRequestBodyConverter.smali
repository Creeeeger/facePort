.class public final Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/Converter;


# static fields
.field public static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field public final serializer:Lorg/simpleframework/xml/core/Persister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/xml; charset=UTF-8"

    :try_start_0
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Persister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->serializer:Lorg/simpleframework/xml/core/Persister;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Lokio/Buffer$outputStream$1;

    invoke-direct {v2, v0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object p0, p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->serializer:Lorg/simpleframework/xml/core/Persister;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-static {v1, v2}, Lorg/simpleframework/xml/stream/NodeBuilder;->write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputDocument;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/SessionManager;->open$1()Lorg/simpleframework/xml/core/Session;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1, v2, v4}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputDocument;Lorg/simpleframework/xml/core/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-wide p0, v0, Lokio/Buffer;->size:J

    invoke-virtual {v0, p0, p1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    new-instance p1, Lokhttp3/RequestBody$1;

    invoke-direct {p1, p0}, Lokhttp3/RequestBody$1;-><init>(Lokio/ByteString;)V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
