.class public Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "ApiResponseCallAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Lretrofit2/Call;

    if-eq p0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 22
    const-class p3, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    if-ne p2, p3, :cond_2

    .line 25
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_1

    .line 28
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 29
    new-instance p1, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapter;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object p1

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ApiResponse must be parameterized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type must be a ApiResponse"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
