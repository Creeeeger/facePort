.class public final Lretrofit2/ServiceMethod;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field public static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field public final baseUrl:Lokhttp3/HttpUrl;

.field public final callAdapter:Lretrofit2/CallAdapter;

.field public final callFactory:Lokhttp3/Call$Factory;

.field public final contentType:Lokhttp3/MediaType;

.field public final hasBody:Z

.field public final headers:Lokhttp3/Headers;

.field public final httpMethod:Ljava/lang/String;

.field public final isFormEncoded:Z

.field public final isMultipart:Z

.field public final parameterHandlers:[Lretrofit2/ParameterHandler;

.field public final relativeUrl:Ljava/lang/String;

.field public final responseConverter:Lretrofit2/Converter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lretrofit2/ServiceMethod$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, v0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    iput-object v1, p0, Lretrofit2/ServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    iget-object v1, p1, Lretrofit2/ServiceMethod$Builder;->callAdapter:Lretrofit2/CallAdapter;

    iput-object v1, p0, Lretrofit2/ServiceMethod;->callAdapter:Lretrofit2/CallAdapter;

    iget-object v0, v0, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/ServiceMethod;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lretrofit2/ServiceMethod$Builder;->responseConverter:Lretrofit2/Converter;

    iput-object v0, p0, Lretrofit2/ServiceMethod;->responseConverter:Lretrofit2/Converter;

    iget-object v0, p1, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/ServiceMethod;->httpMethod:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/ServiceMethod;->relativeUrl:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/ServiceMethod$Builder;->headers:Lokhttp3/Headers;

    iput-object v0, p0, Lretrofit2/ServiceMethod;->headers:Lokhttp3/Headers;

    iget-object v0, p1, Lretrofit2/ServiceMethod$Builder;->contentType:Lokhttp3/MediaType;

    iput-object v0, p0, Lretrofit2/ServiceMethod;->contentType:Lokhttp3/MediaType;

    iget-boolean v0, p1, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    iput-boolean v0, p0, Lretrofit2/ServiceMethod;->hasBody:Z

    iget-boolean v0, p1, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    iput-boolean v0, p0, Lretrofit2/ServiceMethod;->isFormEncoded:Z

    iget-boolean v0, p1, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    iput-boolean v0, p0, Lretrofit2/ServiceMethod;->isMultipart:Z

    iget-object p1, p1, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iput-object p1, p0, Lretrofit2/ServiceMethod;->parameterHandlers:[Lretrofit2/ParameterHandler;

    return-void
.end method

.method public static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method
