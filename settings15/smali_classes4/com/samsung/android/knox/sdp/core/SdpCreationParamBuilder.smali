.class public Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mPrivilegedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->validateFlags(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    return-void
.end method

.method private validateFlags(I)I
    .locals 0

    if-ltz p1, :cond_1

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getParam()Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method public setMdfpp()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    return-void
.end method

.method public setMinor()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    return-void
.end method
