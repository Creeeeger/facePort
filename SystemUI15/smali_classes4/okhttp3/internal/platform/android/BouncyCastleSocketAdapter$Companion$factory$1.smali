.class public final Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter$Companion$factory$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;
    .locals 0

    new-instance p0, Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter;

    invoke-direct {p0}, Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter;-><init>()V

    return-object p0
.end method

.method public final matchesSocket(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    sget-object p0, Lokhttp3/internal/platform/BouncyCastlePlatform;->Companion:Lokhttp3/internal/platform/BouncyCastlePlatform$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lokhttp3/internal/platform/BouncyCastlePlatform;->isSupported:Z

    if-eqz p0, :cond_0

    instance-of p0, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
