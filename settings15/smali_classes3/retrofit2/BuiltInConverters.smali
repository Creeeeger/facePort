.class public final Lretrofit2/BuiltInConverters;
.super Lretrofit2/Converter$Factory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final requestBodyConverter(Ljava/lang/reflect/Type;)Lretrofit2/Converter;
    .locals 0

    const-class p0, Lokhttp3/RequestBody;

    invoke-static {p1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$2:Lretrofit2/BuiltInConverters$ToStringConverter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 2

    const-class p0, Lokhttp3/ResponseBody;

    if-ne p1, p0, :cond_2

    const-class p0, Lretrofit2/http/Streaming;

    sget-object p1, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$3:Lretrofit2/BuiltInConverters$ToStringConverter;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$1:Lretrofit2/BuiltInConverters$ToStringConverter;

    :goto_1
    return-object p0

    :cond_2
    const-class p0, Ljava/lang/Void;

    if-ne p1, p0, :cond_3

    sget-object p0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$4:Lretrofit2/BuiltInConverters$ToStringConverter;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
