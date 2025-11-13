.class public final Landroid/telephony/data/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataCallResponse$Builder;,
        Landroid/telephony/data/DataCallResponse$HandoverFailureMode;,
        Landroid/telephony/data/DataCallResponse$LinkStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HANDOVER_FAILURE_MODE_DO_FALLBACK:I = 0x1

.field public static final whitelist HANDOVER_FAILURE_MODE_LEGACY:I = 0x0

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_HANDOVER:I = 0x2

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_SETUP_NORMAL:I = 0x3

.field public static final whitelist HANDOVER_FAILURE_MODE_UNKNOWN:I = -0x1

.field public static final whitelist LINK_STATUS_ACTIVE:I = 0x2

.field public static final whitelist LINK_STATUS_DORMANT:I = 0x1

.field public static final whitelist LINK_STATUS_INACTIVE:I = 0x0

.field public static final whitelist LINK_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist PDU_SESSION_ID_NOT_SET:I = 0x0

.field public static final whitelist RETRY_DURATION_UNDEFINED:I = -0x1


# instance fields
.field private final greylist-max-o mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCause:I

.field private final blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandoverFailureMode:I

.field private final blacklist mId:I

.field private final blacklist mInterfaceName:Ljava/lang/String;

.field private final blacklist mLinkStatus:I

.field private final greylist-max-o mMtu:I

.field private final blacklist mMtuV4:I

.field private final blacklist mMtuV6:I

.field private final blacklist mNetworkValidationStatus:I

.field private final blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPduSessionId:I

.field private final blacklist mProtocolType:I

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private final blacklist mSuggestedRetryTime:J

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/DataCallResponse$1;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    move/from16 v0, p2

    int-to-long v3, v0

    if-nez p6, :cond_0

    const-string v1, ""

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    if-nez p7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    if-nez p8, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    if-nez p9, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p9

    :goto_3
    if-nez p10, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    goto :goto_4

    :cond_4
    move-object/from16 v12, p10

    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v13, p11

    move/from16 v14, p11

    move/from16 v15, p11

    invoke-direct/range {v1 .. v22}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;I)V

    return-void
.end method

.method private constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IIIII",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;",
            "Landroid/telephony/data/NetworkSliceInfo;",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    move/from16 v4, p4

    iput v4, v0, Landroid/telephony/data/DataCallResponse;->mId:I

    move/from16 v5, p5

    iput v5, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    move/from16 v6, p6

    iput v6, v0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v9, p8

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v10, p9

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v11, p10

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v12, p11

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    move/from16 v8, p12

    iput v8, v0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    move/from16 v13, p13

    iput v13, v0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    move/from16 v15, p15

    iput v15, v0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v1, p20

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    move/from16 v3, p21

    iput v3, v0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    const-string v2, "Active data calls must be on a valid interface!"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active data call must not have a failure!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;ILandroid/telephony/data/DataCallResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p21}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    const-class v1, Landroid/telephony/data/QosBearerSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/QosBearerSession;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    const-class v0, Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSliceInfo;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    return-void
.end method

.method public static blacklist failureModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "retry setup new one"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "retry handover"

    return-object v0

    :pswitch_2
    const-string v0, "fallback"

    return-object v0

    :pswitch_3
    const-string v0, "legacy"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
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
    instance-of v1, p1, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/data/DataCallResponse;

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    iget-wide v5, v1, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mMtu:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    return v0
.end method

.method public blacklist getDefaultQos()Landroid/telephony/data/Qos;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public whitelist getDnsAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGatewayAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHandoverFailureMode()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    return v0
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLinkStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    return v0
.end method

.method public whitelist getMtu()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    return v0
.end method

.method public whitelist getMtuV4()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    return v0
.end method

.method public whitelist getMtuV6()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    return v0
.end method

.method public whitelist getNetworkValidationStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    return v0
.end method

.method public whitelist getPcscfAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPduSessionId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    return v0
.end method

.method public whitelist getProtocolType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    return v0
.end method

.method public blacklist getQosBearerSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRetryDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    return-wide v0
.end method

.method public whitelist getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object v0
.end method

.method public whitelist getSuggestedRetryTime()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getTrafficDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v8

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v10

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v18

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v20

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DataCallResponse: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " linkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " protocolType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " addresses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " gateways="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " pcscf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " mtuV4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " mtuV6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " handoverFailureMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-static {v2}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " pduSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " defaultQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " qosBearerSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " sliceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " trafficDescriptors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " networkValidationStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-static {v2}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
