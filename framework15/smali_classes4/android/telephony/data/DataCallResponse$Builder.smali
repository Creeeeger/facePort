.class public final Landroid/telephony/data/DataCallResponse$Builder;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCause:I

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandoverFailureMode:I

.field private blacklist mId:I

.field private blacklist mInterfaceName:Ljava/lang/String;

.field private blacklist mLinkStatus:I

.field private blacklist mMtu:I

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private blacklist mNetworkValidationStatus:I

.field private blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPduSessionId:I

.field private blacklist mProtocolType:I

.field private blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private blacklist mSuggestedRetryTime:J

.field private blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/DataCallResponse;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Landroid/telephony/data/DataCallResponse;

    move-object/from16 v1, v24

    iget v2, v0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    iget-wide v3, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    iget v5, v0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    iget v6, v0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    iget v7, v0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    iget-object v8, v0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    iget-object v9, v0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    iget-object v10, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v11, v0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    iget-object v12, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    iget v13, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    iget v14, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    iget v15, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    move-object/from16 v25, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    move/from16 v16, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    move-object/from16 v21, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    move/from16 v22, v1

    const/16 v23, 0x0

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;ILandroid/telephony/data/DataCallResponse-IA;)V

    return-object v24
.end method

.method public whitelist setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setCause(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    return-object p0
.end method

.method public blacklist setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object p0
.end method

.method public whitelist setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    return-object p0
.end method

.method public whitelist setId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    return-object p0
.end method

.method public whitelist setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    return-object p0
.end method

.method public whitelist setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    return-object p0
.end method

.method public whitelist setNetworkValidationStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    return-object p0
.end method

.method public whitelist setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string/jumbo v3, "pduSessionId must be greater than or equal to0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v2, 0xf

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string/jumbo v1, "pduSessionId must be less than or equal to 15."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    return-object p0
.end method

.method public blacklist setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    return-object p0
.end method

.method public whitelist setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object p0
.end method

.method public whitelist setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    return-object p0
.end method

.method public whitelist setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    return-object p0
.end method
