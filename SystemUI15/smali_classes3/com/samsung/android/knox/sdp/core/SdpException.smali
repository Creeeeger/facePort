.class public Lcom/samsung/android/knox/sdp/core/SdpException;
.super Ljava/lang/Exception;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mErrorCode:I

.field private mTimeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    iput p2, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method private static classify(I)I
    .locals 1

    const/16 v0, -0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    move p0, v0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    return p0
.end method

.method public getTimeout()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return p0
.end method
