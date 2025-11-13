.class public final Landroid/telephony/NetworkRegistrationInfo$Builder;
.super Ljava/lang/Object;
.source "NetworkRegistrationInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkRegistrationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccessNetworkTechnology:I

.field private blacklist mAvailableServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

.field private blacklist mDomain:I

.field private blacklist mEmergencyOnly:Z

.field private blacklist mIsNonTerrestrialNetwork:Z

.field private blacklist mNetworkRegistrationState:I

.field private blacklist mRejectCause:I

.field private blacklist mRplmn:Ljava/lang/String;

.field private blacklist mTransportType:I

.field private blacklist mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/NetworkRegistrationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmDomain(Landroid/telephony/NetworkRegistrationInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmTransportType(Landroid/telephony/NetworkRegistrationInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmNetworkRegistrationState(Landroid/telephony/NetworkRegistrationInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mNetworkRegistrationState:I

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmAccessNetworkTechnology(Landroid/telephony/NetworkRegistrationInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmRejectCause(Landroid/telephony/NetworkRegistrationInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmEmergencyOnly(Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmAvailableServices(Landroid/telephony/NetworkRegistrationInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmCellIdentity(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/CellIdentity;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmDataSpecificInfo(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmDataSpecificInfo(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/telephony/DataSpecificRegistrationInfo;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    :cond_0
    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmVoiceSpecificInfo(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmVoiceSpecificInfo(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(Landroid/telephony/VoiceSpecificRegistrationInfo;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    :cond_1
    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->-$$Nest$fgetmIsNonTerrestrialNetwork(Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mIsNonTerrestrialNetwork:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/NetworkRegistrationInfo;
    .locals 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v14, Landroid/telephony/NetworkRegistrationInfo;

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    iget v2, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mNetworkRegistrationState:I

    iget v4, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    iget v5, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    iget-boolean v6, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    iget-object v7, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v9, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v11, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-boolean v12, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mIsNonTerrestrialNetwork:Z

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;ZLandroid/telephony/NetworkRegistrationInfo-IA;)V

    return-object v14
.end method

.method public whitelist setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAccessNetworkTechnology:I

    return-object p0
.end method

.method public whitelist setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/telephony/NetworkRegistrationInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mAvailableServices:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public blacklist setDataSpecificInfo(Landroid/telephony/DataSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDataSpecificRegistrationInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    return-object p0
.end method

.method public whitelist setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mDomain:I

    return-object p0
.end method

.method public whitelist setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mEmergencyOnly:Z

    return-object p0
.end method

.method public whitelist setIsNonTerrestrialNetwork(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mIsNonTerrestrialNetwork:Z

    return-object p0
.end method

.method public whitelist setRegisteredPlmn(Ljava/lang/String;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRplmn:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mNetworkRegistrationState:I

    return-object p0
.end method

.method public whitelist setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mRejectCause:I

    return-object p0
.end method

.method public whitelist setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mTransportType:I

    return-object p0
.end method

.method public blacklist setVoiceSpecificInfo(Landroid/telephony/VoiceSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationInfo$Builder;->mVoiceSpecificRegistrationInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    return-object p0
.end method
