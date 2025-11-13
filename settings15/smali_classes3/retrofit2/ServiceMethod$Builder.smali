.class public final Lretrofit2/ServiceMethod$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public callAdapter:Lretrofit2/CallAdapter;

.field public contentType:Lokhttp3/MediaType;

.field public gotBody:Z

.field public gotField:Z

.field public gotPart:Z

.field public gotPath:Z

.field public gotQuery:Z

.field public gotUrl:Z

.field public hasBody:Z

.field public headers:Lokhttp3/Headers;

.field public httpMethod:Ljava/lang/String;

.field public isFormEncoded:Z

.field public isMultipart:Z

.field public final method:Ljava/lang/reflect/Method;

.field public final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field public final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field public parameterHandlers:[Lretrofit2/ParameterHandler;

.field public final parameterTypes:[Ljava/lang/reflect/Type;

.field public relativeUrl:Ljava/lang/String;

.field public relativeUrlParamNames:Ljava/util/Set;

.field public responseConverter:Lretrofit2/Converter;

.field public responseType:Ljava/lang/reflect/Type;

.field public final retrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final build()Lretrofit2/ServiceMethod;
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6c

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-eq v2, v3, :cond_6b

    iget-object v3, v1, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    iput-object v2, v1, Lretrofit2/ServiceMethod$Builder;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v2}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, v1, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    const-class v3, Lretrofit2/Response;

    if-eq v2, v3, :cond_6a

    const-class v3, Lokhttp3/Response;

    if-eq v2, v3, :cond_6a

    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    :try_start_1
    iget-object v3, v1, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3, v2}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    iput-object v2, v1, Lretrofit2/ServiceMethod$Builder;->responseConverter:Lretrofit2/Converter;

    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v3, :cond_13

    aget-object v8, v2, v6

    instance-of v9, v8, Lretrofit2/http/DELETE;

    if-eqz v9, :cond_0

    check-cast v8, Lretrofit2/http/DELETE;

    invoke-interface {v8}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DELETE"

    invoke-virtual {v1, v8, v7, v5}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_0
    instance-of v9, v8, Lretrofit2/http/GET;

    if-eqz v9, :cond_1

    check-cast v8, Lretrofit2/http/GET;

    invoke-interface {v8}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v1, v8, v7, v5}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1
    instance-of v9, v8, Lretrofit2/http/HEAD;

    if-eqz v9, :cond_3

    check-cast v8, Lretrofit2/http/HEAD;

    invoke-interface {v8}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HEAD"

    invoke-virtual {v1, v8, v7, v5}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class v7, Ljava/lang/Void;

    iget-object v8, v1, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_4

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "HEAD method must use Void as response type."

    invoke-virtual {v1, v4, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    instance-of v9, v8, Lretrofit2/http/PATCH;

    if-eqz v9, :cond_4

    check-cast v8, Lretrofit2/http/PATCH;

    invoke-interface {v8}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PATCH"

    invoke-virtual {v1, v9, v8, v7}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_4
    instance-of v9, v8, Lretrofit2/http/POST;

    if-eqz v9, :cond_5

    check-cast v8, Lretrofit2/http/POST;

    invoke-interface {v8}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v8

    const-string v9, "POST"

    invoke-virtual {v1, v9, v8, v7}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_5
    instance-of v9, v8, Lretrofit2/http/PUT;

    if-eqz v9, :cond_6

    check-cast v8, Lretrofit2/http/PUT;

    invoke-interface {v8}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PUT"

    invoke-virtual {v1, v9, v8, v7}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_6
    instance-of v9, v8, Lretrofit2/http/OPTIONS;

    if-eqz v9, :cond_7

    check-cast v8, Lretrofit2/http/OPTIONS;

    invoke-interface {v8}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPTIONS"

    invoke-virtual {v1, v8, v7, v5}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_7
    instance-of v9, v8, Lretrofit2/http/HTTP;

    if-eqz v9, :cond_8

    check-cast v8, Lretrofit2/http/HTTP;

    invoke-interface {v8}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v8

    invoke-virtual {v1, v7, v9, v8}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_8
    instance-of v9, v8, Lretrofit2/http/Headers;

    if-eqz v9, :cond_e

    check-cast v8, Lretrofit2/http/Headers;

    invoke-interface {v8}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-eqz v9, :cond_d

    new-instance v9, Lokhttp3/Headers$Builder;

    invoke-direct {v9}, Lokhttp3/Headers$Builder;-><init>()V

    array-length v10, v8

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_c

    aget-object v12, v8, v11

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    if-eq v13, v14, :cond_b

    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Content-Type"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    :try_start_2
    invoke-static {v12}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-object v13, v4

    :goto_2
    if-eqz v13, :cond_9

    iput-object v13, v1, Lretrofit2/ServiceMethod$Builder;->contentType:Lokhttp3/MediaType;

    goto :goto_3

    :cond_9
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Malformed content type: %s"

    invoke-virtual {v1, v4, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a
    invoke-static {v14}, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V

    invoke-static {v12, v14}, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14, v12}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_b
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-virtual {v1, v4, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v7, Lokhttp3/Headers;

    invoke-direct {v7, v9}, Lokhttp3/Headers;-><init>(Lokhttp3/Headers$Builder;)V

    iput-object v7, v1, Lretrofit2/ServiceMethod$Builder;->headers:Lokhttp3/Headers;

    goto :goto_4

    :cond_d
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "@Headers annotation is empty."

    invoke-virtual {v1, v4, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_e
    instance-of v9, v8, Lretrofit2/http/Multipart;

    const-string v10, "Only one encoding annotation is allowed."

    if-eqz v9, :cond_10

    iget-boolean v8, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v8, :cond_f

    iput-boolean v7, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    goto :goto_4

    :cond_f
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v10, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    instance-of v8, v8, Lretrofit2/http/FormUrlEncoded;

    if-eqz v8, :cond_12

    iget-boolean v8, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v8, :cond_11

    iput-boolean v7, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    goto :goto_4

    :cond_11
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v10, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_12
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_13
    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v2, :cond_69

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v2, :cond_16

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v2, :cond_15

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v2, :cond_14

    goto :goto_5

    :cond_14
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-virtual {v1, v4, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_15
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-virtual {v1, v4, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_5
    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v2, v2

    new-array v3, v2, [Lretrofit2/ParameterHandler;

    iput-object v3, v1, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    move v3, v5

    :goto_6
    if-ge v3, v2, :cond_60

    iget-object v6, v1, Lretrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v6, v6, v3

    invoke-static {v6}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_5f

    iget-object v8, v1, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v8, v8, v3

    const-string v9, "No Retrofit annotation found."

    if-eqz v8, :cond_5e

    iget-object v10, v1, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    array-length v11, v8

    move-object v13, v4

    move v12, v5

    :goto_7
    if-ge v12, v11, :cond_5c

    aget-object v14, v8, v12

    instance-of v15, v14, Lretrofit2/http/Url;

    const-string v4, "@Path parameters may not be used with @Url."

    const-class v5, Ljava/lang/String;

    if-eqz v15, :cond_1d

    iget-boolean v14, v1, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v14, :cond_1c

    iget-boolean v14, v1, Lretrofit2/ServiceMethod$Builder;->gotPath:Z

    if-nez v14, :cond_1b

    iget-boolean v4, v1, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v4, :cond_1a

    iget-object v4, v1, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v4, :cond_19

    iput-boolean v7, v1, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    const-class v4, Lokhttp3/HttpUrl;

    if-eq v6, v4, :cond_18

    if-eq v6, v5, :cond_18

    const-class v4, Ljava/net/URI;

    if-eq v6, v4, :cond_18

    instance-of v4, v6, Ljava/lang/Class;

    if-eqz v4, :cond_17

    move-object v4, v6

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.Uri"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_8

    :cond_17
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_18
    :goto_8
    new-instance v4, Lretrofit2/ParameterHandler$RawPart;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lretrofit2/ParameterHandler$RawPart;-><init>(I)V

    move/from16 v16, v2

    move-object v2, v4

    :goto_9
    move v5, v7

    move-object/from16 v18, v9

    move/from16 v17, v11

    goto/16 :goto_f

    :cond_19
    iget-object v0, v1, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Url cannot be used with @%s URL"

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1a
    const-string v0, "A @Url parameter must not come after a @Query"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v2, 0x0

    const-string v0, "Multiple @Url method annotations found."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1d
    instance-of v15, v14, Lretrofit2/http/Path;

    if-eqz v15, :cond_23

    iget-boolean v5, v1, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v5, :cond_22

    iget-boolean v5, v1, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v5, :cond_21

    iget-object v4, v1, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v4, :cond_20

    iput-boolean v7, v1, Lretrofit2/ServiceMethod$Builder;->gotPath:Z

    check-cast v14, Lretrofit2/http/Path;

    invoke-interface {v14}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lretrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, v1, Lretrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0, v6, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lretrofit2/ParameterHandler$Path;

    invoke-interface {v14}, Lretrofit2/http/Path;->encoded()Z

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v5, v15, v4, v14}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    move/from16 v16, v2

    move-object v2, v5

    goto :goto_9

    :cond_1e
    iget-object v0, v1, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1f
    sget-object v0, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Path parameter name must match %s. Found: %s"

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v0, v1, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Path can only be used with relative url on @%s"

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v0, 0x0

    const-string v2, "A @Path parameter must not come after a @Query."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_23
    instance-of v4, v14, Lretrofit2/http/Query;

    const-string v15, "<String>)"

    const-string v7, " must include generic type (e.g., "

    if-eqz v4, :cond_27

    check-cast v14, Lretrofit2/http/Query;

    invoke-interface {v14}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14}, Lretrofit2/http/Query;->encoded()Z

    move-result v5

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    move/from16 v16, v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    instance-of v2, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_24

    move-object v2, v6

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v7, 0x0

    invoke-static {v7, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lretrofit2/ParameterHandler$Path;

    const/4 v7, 0x2

    invoke-direct {v2, v7, v4, v5}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    new-instance v4, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    :goto_a
    move-object v2, v4

    :goto_b
    move-object/from16 v18, v9

    move/from16 v17, v11

    :goto_c
    const/4 v5, 0x1

    goto/16 :goto_f

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_25
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lretrofit2/ParameterHandler$Path;

    const/4 v7, 0x2

    invoke-direct {v2, v7, v4, v5}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    new-instance v4, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :cond_26
    invoke-virtual {v0, v6, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lretrofit2/ParameterHandler$Path;

    const/4 v7, 0x2

    invoke-direct {v2, v7, v4, v5}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    goto :goto_b

    :cond_27
    move/from16 v16, v2

    instance-of v2, v14, Lretrofit2/http/QueryName;

    if-eqz v2, :cond_2b

    check-cast v14, Lretrofit2/http/QueryName;

    invoke-interface {v14}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v2

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v1, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_29

    instance-of v5, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_28

    move-object v4, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lretrofit2/ParameterHandler$FieldMap;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IZ)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lretrofit2/ParameterHandler$FieldMap;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IZ)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_2a
    invoke-virtual {v0, v6, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lretrofit2/ParameterHandler$FieldMap;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IZ)V

    goto/16 :goto_a

    :cond_2b
    instance-of v2, v14, Lretrofit2/http/QueryMap;

    const-string v4, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v2, :cond_2f

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const-class v7, Ljava/util/Map;

    invoke-static {v6, v2, v7}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_2d

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v5, v7, :cond_2c

    const/4 v4, 0x1

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lretrofit2/ParameterHandler$FieldMap;

    check-cast v14, Lretrofit2/http/QueryMap;

    invoke-interface {v14}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IZ)V

    goto/16 :goto_b

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@QueryMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2d
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v2, 0x0

    const-string v0, "@QueryMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2f
    instance-of v2, v14, Lretrofit2/http/Header;

    if-eqz v2, :cond_33

    check-cast v14, Lretrofit2/http/Header;

    invoke-interface {v14}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_31

    instance-of v5, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_30

    move-object v4, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v4, v2}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/String;)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_31
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v4, v2}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/String;)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_32
    invoke-virtual {v0, v6, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v4, v2}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_33
    instance-of v2, v14, Lretrofit2/http/HeaderMap;

    if-eqz v2, :cond_37

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_36

    const-class v7, Ljava/util/Map;

    invoke-static {v6, v2, v7}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_35

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v5, v7, :cond_34

    const/4 v4, 0x1

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lretrofit2/ParameterHandler$RawPart;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lretrofit2/ParameterHandler$RawPart;-><init>(I)V

    goto/16 :goto_b

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@HeaderMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_35
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_36
    const/4 v2, 0x0

    const-string v0, "@HeaderMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_37
    instance-of v2, v14, Lretrofit2/http/Field;

    if-eqz v2, :cond_3c

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v2, :cond_3b

    check-cast v14, Lretrofit2/http/Field;

    invoke-interface {v14}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14}, Lretrofit2/http/Field;->encoded()Z

    move-result v4

    const/4 v5, 0x1

    iput-boolean v5, v1, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    const-class v14, Ljava/lang/Iterable;

    invoke-virtual {v14, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_39

    instance-of v14, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_38

    move-object v5, v6

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    const/4 v7, 0x0

    invoke-static {v7, v5}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lretrofit2/ParameterHandler$Path;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v2, v4}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v5}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_39
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lretrofit2/ParameterHandler$Path;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v2, v4}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v5}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_3a
    invoke-virtual {v0, v6, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lretrofit2/ParameterHandler$Path;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v2, v4}, Lretrofit2/ParameterHandler$Path;-><init>(ILjava/lang/String;Z)V

    move-object v2, v5

    goto/16 :goto_b

    :cond_3b
    const-string v0, "@Field parameters can only be used with form encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3c
    instance-of v2, v14, Lretrofit2/http/FieldMap;

    if-eqz v2, :cond_41

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v2, :cond_40

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const-class v7, Ljava/util/Map;

    invoke-static {v6, v2, v7}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3e

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v5, v7, :cond_3d

    const/4 v4, 0x1

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    iput-boolean v4, v1, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    new-instance v2, Lretrofit2/ParameterHandler$FieldMap;

    check-cast v14, Lretrofit2/http/FieldMap;

    invoke-interface {v14}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IZ)V

    goto/16 :goto_b

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@FieldMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3f
    const/4 v2, 0x0

    const-string v0, "@FieldMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_40
    const/4 v2, 0x0

    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_41
    instance-of v2, v14, Lretrofit2/http/Part;

    move/from16 v17, v11

    const-class v11, Lokhttp3/MultipartBody$Part;

    if-eqz v2, :cond_50

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v2, :cond_4f

    check-cast v14, Lretrofit2/http/Part;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    invoke-interface {v14}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_48

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    sget-object v5, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    const-string v14, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v2, :cond_44

    instance-of v2, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_43

    move-object v2, v6

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v5}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    :goto_d
    move-object/from16 v18, v9

    goto/16 :goto_c

    :cond_42
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v14, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_44
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_45

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v5}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto :goto_d

    :cond_45
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v14, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_46
    const/4 v2, 0x0

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_47

    move-object v2, v5

    goto :goto_d

    :cond_47
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v14, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_48
    const-string v5, "form-data; name=\""

    move-object/from16 v18, v9

    const-string v9, "\""

    invoke-static {v5, v2, v9}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Content-Disposition"

    const-string v14, "Content-Transfer-Encoding"

    filled-new-array {v9, v2, v14, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const-string v9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v5, :cond_4b

    instance-of v5, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_4a

    move-object v4, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, v1, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v4, v8, v5}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    new-instance v5, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v5, v2, v4}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v5}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_49
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v9, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4b
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4c

    iget-object v5, v1, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v4, v8, v5}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    new-instance v5, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v5, v2, v4}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v5}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_4c
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v9, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4d
    const/4 v5, 0x0

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, v1, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v6, v8, v4}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    new-instance v7, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v7, v2, v4}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    move-object v2, v7

    goto/16 :goto_c

    :cond_4e
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v9, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4f
    const/4 v5, 0x0

    const-string v0, "@Part parameters can only be used with multipart encoding."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_50
    move-object/from16 v18, v9

    instance-of v2, v14, Lretrofit2/http/PartMap;

    if-eqz v2, :cond_56

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    iput-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_54

    const-class v7, Ljava/util/Map;

    invoke-static {v6, v2, v7}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_53

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v5, v7, :cond_52

    const/4 v4, 0x1

    invoke-static {v4, v2}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v4, v1, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v2, v8, v4}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    check-cast v14, Lretrofit2/http/PartMap;

    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-interface {v14}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lretrofit2/ParameterHandler$Part;-><init>(Lretrofit2/Converter;Ljava/lang/String;)V

    :goto_e
    move-object v2, v4

    goto/16 :goto_c

    :cond_51
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_52
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "@PartMap keys must be of type String: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_53
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_54
    const/4 v2, 0x0

    const-string v0, "@PartMap parameter type must be Map."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_55
    const/4 v2, 0x0

    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_56
    instance-of v2, v14, Lretrofit2/http/Body;

    if-eqz v2, :cond_59

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v2, :cond_58

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v2, :cond_58

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v2, :cond_57

    :try_start_3
    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v6, v8, v2}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v4, 0x1

    iput-boolean v4, v1, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    new-instance v4, Lretrofit2/ParameterHandler$1;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Lretrofit2/ParameterHandler$1;-><init>(ILjava/lang/Object;)V

    goto :goto_e

    :catch_1
    move-exception v0

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create @Body converter for %s (parameter #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_57
    const-string v0, "Multiple @Body method annotations found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v2, 0x0

    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_59
    const/4 v5, 0x1

    const/4 v2, 0x0

    :goto_f
    if-nez v2, :cond_5a

    goto :goto_10

    :cond_5a
    if-nez v13, :cond_5b

    move-object v13, v2

    :goto_10
    add-int/lit8 v12, v12, 0x1

    move v7, v5

    move/from16 v2, v16

    move/from16 v11, v17

    move-object/from16 v9, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_5b
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5c
    move/from16 v16, v2

    move v2, v5

    move v5, v7

    move-object/from16 v18, v9

    if-eqz v13, :cond_5d

    aput-object v13, v10, v3

    add-int/lit8 v3, v3, 0x1

    move v7, v5

    const/4 v4, 0x0

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_6

    :cond_5d
    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v4, v18

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5e
    move v2, v5

    move-object v4, v9

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5f
    const-string v0, "Parameter type must not include a type variable or wildcard: %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_60
    iget-object v0, v1, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_62

    iget-boolean v0, v1, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-eqz v0, :cond_61

    goto :goto_11

    :cond_61
    iget-object v0, v1, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Missing either @%s URL or @Url parameter."

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_62
    :goto_11
    iget-boolean v0, v1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_64

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v2, :cond_64

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v2, :cond_64

    iget-boolean v2, v1, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v2, :cond_63

    goto :goto_12

    :cond_63
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_64
    :goto_12
    if-eqz v0, :cond_66

    iget-boolean v0, v1, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    if-eqz v0, :cond_65

    goto :goto_13

    :cond_65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_66
    :goto_13
    iget-boolean v0, v1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_68

    iget-boolean v0, v1, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    if-eqz v0, :cond_67

    goto :goto_14

    :cond_67
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_68
    :goto_14
    new-instance v0, Lretrofit2/ServiceMethod;

    invoke-direct {v0, v1}, Lretrofit2/ServiceMethod;-><init>(Lretrofit2/ServiceMethod$Builder;)V

    return-object v0

    :cond_69
    move-object v3, v4

    move v0, v5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unable to create converter for %s"

    invoke-virtual {v1, v0, v3, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_3
    move-exception v0

    move-object v3, v0

    const-string v0, "Unable to create call adapter for %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6b
    move v2, v5

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Service methods cannot return void."

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6c
    move-object v3, v4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final varargs methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "\n    for method "

    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public final varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    const-string v0, " (parameter #"

    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public final parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    iput-boolean p3, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-eq p1, p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-virtual {p0, v1, p2, p1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    sget-object p1, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    return-void

    :cond_4
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-virtual {p0, v1, p2, p1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
