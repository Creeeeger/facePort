.class public final Landroid/telephony/ims/SipDelegateConfiguration;
.super Ljava/lang/Object;
.source "SipDelegateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;,
        Landroid/telephony/ims/SipDelegateConfiguration$Builder;,
        Landroid/telephony/ims/SipDelegateConfiguration$TransportType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDelegateConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SIP_TRANSPORT_TCP:I = 0x1

.field public static final whitelist SIP_TRANSPORT_UDP:I = 0x0

.field public static final whitelist UDP_PAYLOAD_SIZE_UNDEFINED:I = -0x1


# instance fields
.field private blacklist mAssociatedUriHeader:Ljava/lang/String;

.field private blacklist mCniHeader:Ljava/lang/String;

.field private blacklist mContactUserParam:Ljava/lang/String;

.field private blacklist mGruu:Landroid/net/Uri;

.field private blacklist mHomeDomain:Ljava/lang/String;

.field private blacklist mImei:Ljava/lang/String;

.field private blacklist mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

.field private blacklist mIsSipCompactFormEnabled:Z

.field private blacklist mIsSipKeepaliveEnabled:Z

.field private final blacklist mLocalAddress:Ljava/net/InetSocketAddress;

.field private blacklist mMaxUdpPayloadSize:I

.field private blacklist mNatAddress:Ljava/net/InetSocketAddress;

.field private blacklist mPaniHeader:Ljava/lang/String;

.field private blacklist mPathHeader:Ljava/lang/String;

.field private blacklist mPlaniHeader:Ljava/lang/String;

.field private blacklist mPrivateUserIdentifier:Ljava/lang/String;

.field private blacklist mPublicUserIdentifier:Ljava/lang/String;

.field private blacklist mServiceRouteHeader:Ljava/lang/String;

.field private blacklist mSipAuthHeader:Ljava/lang/String;

.field private blacklist mSipAuthNonce:Ljava/lang/String;

.field private final blacklist mSipServerAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mTransportType:I

.field private blacklist mUserAgentHeader:Ljava/lang/String;

.field private final blacklist mVersion:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAssociatedUriHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContactUserParam(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGruu(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHomeDomain(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImei(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSipCompactFormEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSipKeepaliveEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxUdpPayloadSize(Landroid/telephony/ims/SipDelegateConfiguration;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNatAddress(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPathHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPlaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrivateUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPublicUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceRouteHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipAuthHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipAuthNonce(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserAgentHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDelegateConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDelegateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iput-wide p1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    iput p3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iput-object p4, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iput-object p5, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method synthetic constructor blacklist <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->fromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetSocketAddress;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "SipDelegateConfiguration"

    const-string v4, "exception reading address, returning null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public blacklist copyAndIncrementVersion()Landroid/telephony/ims/SipDelegateConfiguration;
    .locals 7

    new-instance v6, Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {p0}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v1, v0, v2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iget-object v4, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iput-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iget-boolean v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iput-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iput v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SipDelegateConfiguration;

    iget-wide v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    iget-wide v5, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getHomeDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIpSecConfiguration()Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    return-object v0
.end method

.method public whitelist getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getMaxUdpPayloadSizeBytes()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    return v0
.end method

.method public whitelist getNatSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getPrivateUserIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPublicGruuUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPublicUserIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipAssociatedUriHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipAuthenticationHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipAuthenticationNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipCniHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipContactUserParameter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipPaniHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipPathHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipPlaniHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist getSipServiceRouteHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSipUserAgentHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTransportType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    return v0
.end method

.method public whitelist getVersion()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v6, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    iget-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    iget-object v11, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    iget-object v12, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    iget-object v13, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    iget-object v14, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    iget-object v15, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    move-object/from16 v26, v1

    filled-new-array/range {v3 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isSipCompactFormEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    return v0
.end method

.method public whitelist isSipKeepaliveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegateConfiguration{ mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-wide v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mLocalAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipServerAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipCompactFormEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIsSipKeepaliveEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mMaxUdpPayloadSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPublicUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPrivateUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mHomeDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mImei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mGruu:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mSipAuthNonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mServiceRouteHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPathHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mUserAgentHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mContactUserParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPaniHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mPlaniHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mCniHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mAssociatedUriHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mIpSecConfiguration:Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->addToParcel(Landroid/os/Parcel;)V

    :cond_1
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration;->mNatAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->writeAddressToParcel(Ljava/net/InetSocketAddress;Landroid/os/Parcel;)V

    :cond_3
    return-void
.end method
