.class public final Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;


# static fields
.field public static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;

.field public static final DEFAULT_PROTOCOLS:Ljava/util/List;


# instance fields
.field public final authenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

.field public final callTimeout:I

.field public final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public final certificatePinner:Lokhttp3/CertificatePinner;

.field public final connectTimeout:I

.field public final connectionPool:Lokhttp3/ConnectionPool;

.field public final connectionSpecs:Ljava/util/List;

.field public final cookieJar:Lokhttp3/CookieJar$1;

.field public final dispatcher:Lokhttp3/Dispatcher;

.field public final dns:Lokhttp3/Dns$$ExternalSyntheticLambda0;

.field public final eventListenerFactory:Lokhttp3/EventListener$$ExternalSyntheticLambda0;

.field public final followRedirects:Z

.field public final followSslRedirects:Z

.field public final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public final interceptors:Ljava/util/List;

.field public final networkInterceptors:Ljava/util/List;

.field public final pingInterval:I

.field public final protocols:Ljava/util/List;

.field public final proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

.field public final proxySelector:Ljava/net/ProxySelector;

.field public final readTimeout:I

.field public final retryOnConnectionFailure:Z

.field public final socketFactory:Ljavax/net/SocketFactory;

.field public final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field public final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    filled-new-array {v0, v1}, [Lokhttp3/Protocol;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    sget-object v0, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    filled-new-array {v0, v1}, [Lokhttp3/ConnectionSpec;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    new-instance v0, Lokhttp3/OkHttpClient$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lokhttp3/OkHttpClient$1;->instance:Lokhttp3/OkHttpClient$1;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 8

    const-string v0, "No System TLS"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v2}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v2}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$$ExternalSyntheticLambda0;

    iput-object v2, p0, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$$ExternalSyntheticLambda0;

    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v2, p0, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar$1;

    iput-object v2, p0, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar$1;

    iget-object v2, p1, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v2, p0, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/ConnectionSpec;

    if-nez v3, :cond_1

    iget-boolean v3, v4, Lokhttp3/ConnectionSpec;->tls:Z

    if-eqz v3, :cond_0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    if-nez v3, :cond_3

    iput-object v1, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_1

    :cond_3
    const-string v3, "Unexpected default trust managers:"

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    array-length v6, v4

    if-ne v6, v5, :cond_8

    aget-object v6, v4, v2

    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_8

    check-cast v6, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v3, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    invoke-virtual {v3}, Lokhttp3/internal/platform/Platform;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    aput-object v6, v5, v2

    invoke-virtual {v4, v1, v5, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v6}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    :goto_1
    iget-object v0, p0, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4

    sget-object v3, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    invoke-virtual {v3, v0}, Lokhttp3/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_4
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p0, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iget-object v3, p1, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v4, v3, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Lokhttp3/CertificatePinner;

    iget-object v3, v3, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-direct {v4, v3, v0}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    move-object v3, v4

    :goto_2
    iput-object v3, p0, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator$$ExternalSyntheticLambda0;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns$$ExternalSyntheticLambda0;

    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->followRedirects:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput v2, p0, Lokhttp3/OkHttpClient;->callTimeout:I

    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient;->connectTimeout:I

    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient;->readTimeout:I

    iget p1, p1, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput p1, p0, Lokhttp3/OkHttpClient;->writeTimeout:I

    iput v2, p0, Lokhttp3/OkHttpClient;->pingInterval:I

    iget-object p1, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null network interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_8
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
