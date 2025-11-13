.class public Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mApnName:Ljava/lang/String;

.field public mAuthType:I

.field public mId:J

.field public mMcc:Ljava/lang/String;

.field public mMmsProxyAddress:Ljava/lang/String;

.field public mMmsProxyPort:I

.field public mMmsc:Ljava/lang/String;

.field public mMnc:Ljava/lang/String;

.field public mMvnoType:Ljava/lang/String;

.field public mMvnoValue:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mProxyAddress:Ljava/lang/String;

.field public mProxyPort:I

.field public mRoamingProtocol:Ljava/lang/String;

.field public mServer:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUser:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;I)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setApnName(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthType(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mAuthType:I

    return-object p0
.end method

.method public final setId(J)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mId:J

    return-object p0
.end method

.method public setMcc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsProxyPort(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyPort:I

    return-object p0
.end method

.method public setMmsc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsc:Ljava/lang/String;

    return-object p0
.end method

.method public setMnc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public setMvnoType(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoType:Ljava/lang/String;

    return-object p0
.end method

.method public setMvnoValue(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoValue:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyAddress(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyPort(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyPort:I

    return-object p0
.end method

.method public setRoamingProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mRoamingProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mServer:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method
