.class public Lcom/samsung/android/knox/net/apn/ApnSettings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MVNO_GID:Ljava/lang/String; = "gid"

.field public static final MVNO_IMSI:Ljava/lang/String; = "imsi"

.field public static final MVNO_NONE:Ljava/lang/String; = ""

.field public static final MVNO_SPN:Ljava/lang/String; = "spn"

.field public static final PROTOCOL_IPV4:Ljava/lang/String; = "IP"

.field public static final PROTOCOL_IPV4_IPV6:Ljava/lang/String; = "IPV4V6"

.field public static final PROTOCOL_IPV6:Ljava/lang/String; = "IPV6"


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public mvno_type:Ljava/lang/String;

.field public mvno_value:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public roamingProtocol:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/apn/ApnSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v1, "IP"

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v1, "IP"

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    const-string v1, "IP"

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    iget-wide v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mId:J

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyPort:I

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mAuthType:I

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mRoamingProtocol:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    return p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    return-wide v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    return-object p0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    return-object p0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-object p0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    return-object p0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    return p0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    return-object p0
.end method

.method public getServer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    return-void
.end method

.method public setAuthType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->authType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
