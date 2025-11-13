.class public final Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "SimpleXmlConverterFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final serializer:Lorg/simpleframework/xml/Serializer;

.field private final strict:Z


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/Serializer;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 63
    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 64
    iput-boolean p2, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    return-void
.end method

.method public static create()Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 1

    .line 39
    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    invoke-static {v0}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->create(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 2

    .line 44
    new-instance v0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;-><init>(Lorg/simpleframework/xml/Serializer;Z)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 84
    instance-of p1, p1, Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    new-instance p1, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;

    iget-object p0, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-direct {p1, p0}, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;-><init>(Lorg/simpleframework/xml/Serializer;)V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 74
    instance-of p2, p1, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    check-cast p1, Ljava/lang/Class;

    .line 78
    new-instance p2, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;

    iget-object p3, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    iget-boolean p0, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    invoke-direct {p2, p1, p3, p0}, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/Serializer;Z)V

    return-object p2
.end method
