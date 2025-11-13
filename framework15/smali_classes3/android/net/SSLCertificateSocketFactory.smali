.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final greylist-max-p TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private greylist-max-r mAlpnProtocols:[B

.field private greylist-max-r mChannelIdPrivateKey:Ljava/security/PrivateKey;

.field private final greylist mHandshakeTimeoutMillis:I

.field private greylist mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private greylist-max-r mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private greylist-max-r mNpnProtocols:[B

.field private final greylist mSecure:Z

.field private greylist mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final greylist-max-r mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private greylist-max-r mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v1}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-void
.end method

.method private constructor greylist <init>(ILandroid/net/SSLSessionCache;Z)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    :goto_0
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    return-void
.end method

.method private static greylist-max-r castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .locals 3

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getDefault(I)Ljavax/net/SocketFactory;
    .locals 3

    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static whitelist getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private declared-synchronized greylist getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_3

    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_4
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static greylist getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static whitelist getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private static greylist isSslCheckRelaxed()Z
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "socket.relaxsslcheck"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private greylist-max-r makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v2, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SSLCertificateSocketFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    return-object v1
.end method

.method public static varargs blacklist toLengthPrefixedList([[B)[B
    .locals 11

    array-length v0, p0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    array-length v5, v4

    if-eqz v5, :cond_0

    array-length v5, v4

    const/16 v6, 0xff

    if-gt v5, v6, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s.length == 0 || s.length > 255: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v1, v0, [B

    const/4 v3, 0x0

    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, p0, v5

    add-int/lit8 v7, v3, 0x1

    array-length v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    array-length v3, v6

    move v8, v2

    :goto_2
    if-ge v8, v3, :cond_2

    aget-byte v9, v6, v8

    add-int/lit8 v10, v7, 0x1

    aput-byte v9, v1, v7

    add-int/lit8 v8, v8, 0x1

    move v7, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "items.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to verify non-SSL socket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public greylist-max-p getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r setAlpnProtocols([[B)V
    .locals 1

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    return-void
.end method

.method public greylist-max-p setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public whitelist setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 1

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public whitelist setNpnProtocols([[B)V
    .locals 1

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    return-void
.end method

.method public greylist-max-r setSoWriteTimeout(Ljava/net/Socket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    return-void
.end method

.method public whitelist setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 1

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public whitelist setUseSessionTickets(Ljava/net/Socket;Z)V
    .locals 1

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    return-void
.end method
