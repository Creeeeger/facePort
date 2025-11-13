.class public final Landroid/telephony/data/DataProfile$Builder;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mApn:Ljava/lang/String;

.field private blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mAuthType:I

.field private blacklist mBearerBitmask:I

.field private blacklist mCid:I

.field private blacklist mEnabled:Z

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPersistent:Z

.field private blacklist mPreferred:Z

.field private blacklist mProfileId:I

.field private blacklist mProtocolType:I

.field private blacklist mRoamingProtocolType:I

.field private blacklist mSupportedApnTypesBitmask:I

.field private blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private blacklist mType:I

.field private blacklist mUserName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;
    .locals 0

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCid(Landroid/telephony/data/DataProfile$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileId(Landroid/telephony/data/DataProfile$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 583
    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 586
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 610
    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    .line 617
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/DataProfile;
    .locals 2

    .line 888
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 891
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 892
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 893
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 894
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 895
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 896
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 897
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 898
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 899
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 900
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 901
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 902
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 903
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 904
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 908
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 909
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APN setting and traffic descriptor can\'t be both null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_2
    :goto_0
    new-instance v0, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V

    return-object v0
.end method

.method public whitelist enable(Z)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 723
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 724
    return-object p0
.end method

.method public whitelist setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 646
    return-object p0
.end method

.method public whitelist setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 864
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 865
    return-object p0
.end method

.method public whitelist setAuthType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "authType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 674
    return-object p0
.end method

.method public whitelist setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "bearerBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 767
    return-object p0
.end method

.method public whitelist setCid(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "cid"    # I

    .line 849
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    .line 850
    return-object p0
.end method

.method public whitelist setMtu(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 782
    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 795
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 796
    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 810
    return-object p0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public whitelist setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 837
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 838
    return-object p0
.end method

.method public whitelist setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "isPreferred"    # Z

    .line 822
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    .line 823
    return-object p0
.end method

.method public whitelist setProfileId(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "profileId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 631
    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 660
    return-object p0
.end method

.method public whitelist setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 751
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 752
    return-object p0
.end method

.method public whitelist setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "supportedApnTypesBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 737
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 738
    return-object p0
.end method

.method public whitelist setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;

    .line 878
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 879
    return-object p0
.end method

.method public whitelist setType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 712
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 713
    return-object p0
.end method

.method public whitelist setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 688
    return-object p0
.end method
