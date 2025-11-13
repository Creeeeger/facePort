.class final Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;
.super Ljava/lang/Object;
.source "SimpleXmlRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private final serializer:Lorg/simpleframework/xml/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/xml; charset=UTF-8"

    .line 27
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Lorg/simpleframework/xml/Serializer;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 39
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {p0, p1, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    sget-object p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
