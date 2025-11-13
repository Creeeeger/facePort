.class public final synthetic Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    sget p0, Lcom/airbnb/lottie/LottieAnimationView;->$r8$clinit:I

    sget-object p0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/ProtocolException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/UnknownServiceException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "Unable to load composition."

    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
