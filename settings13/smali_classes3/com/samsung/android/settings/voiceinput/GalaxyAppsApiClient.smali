.class public Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiClient;
.super Ljava/lang/Object;
.source "GalaxyAppsApiClient.java"


# static fields
.field private static mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getClient()Lretrofit2/Retrofit;
    .locals 3

    .line 19
    sget-object v0, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiClient;->mRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 21
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 22
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 23
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 25
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "https://vas.samsungapps.com/"

    .line 26
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 28
    invoke-static {}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->create()Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapterFactory;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapterFactory;-><init>()V

    .line 29
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapterFactory;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapterFactory;-><init>()V

    .line 30
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiClient;->mRetrofit:Lretrofit2/Retrofit;

    .line 33
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiClient;->mRetrofit:Lretrofit2/Retrofit;

    return-object v0
.end method
