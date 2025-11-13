.class public final Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/Converter;


# instance fields
.field public final cls:Ljava/lang/Class;

.field public final serializer:Lorg/simpleframework/xml/core/Persister;

.field public final strict:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/core/Persister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;->cls:Ljava/lang/Class;

    iput-object p2, p0, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;->serializer:Lorg/simpleframework/xml/core/Persister;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lokhttp3/ResponseBody;

    const-string v0, "Could not deserialize body as "

    :try_start_0
    iget-object v1, p0, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;->serializer:Lorg/simpleframework/xml/core/Persister;

    iget-object v2, p0, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;->cls:Ljava/lang/Class;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;->cls:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw p0
.end method
