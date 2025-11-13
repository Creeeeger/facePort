.class public Landroid/telephony/SubscriptionInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAreUiccApplicationsEnabled:Z

.field private blacklist mCardId:I

.field private blacklist mCardString:Ljava/lang/String;

.field private blacklist mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

.field private blacklist mCarrierId:I

.field private blacklist mCarrierName:Ljava/lang/CharSequence;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDataRoaming:I

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private blacklist mDisplayNameSource:I

.field private blacklist mEhplmns:[Ljava/lang/String;

.field private blacklist mGroupOwner:Ljava/lang/String;

.field private blacklist mGroupUuid:Landroid/os/ParcelUuid;

.field private blacklist mHplmns:[Ljava/lang/String;

.field private blacklist mIccId:Ljava/lang/String;

.field private blacklist mIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIconTint:I

.field private blacklist mId:I

.field private blacklist mIsEmbedded:Z

.field private blacklist mIsGroupDisabled:Z

.field private blacklist mIsOnlyNonTerrestrialNetwork:Z

.field private blacklist mIsOpportunistic:Z

.field private blacklist mIsSatelliteESOSSupported:Z

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mPortIndex:I

.field private blacklist mProfileClass:I

.field private blacklist mServiceCapabilities:I

.field private blacklist mSimSlotIndex:I

.field private blacklist mTransferStatus:I

.field private blacklist mType:I

.field private blacklist mUsageSetting:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/os/ParcelUuid;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SubscriptionInfo;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/SubscriptionInfo;
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/SubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo$Builder;Landroid/telephony/SubscriptionInfo-IA;)V

    return-object v0
.end method

.method public blacklist setCardId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    return-object p0
.end method

.method public blacklist setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCarrierConfigAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method public blacklist setCarrierId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCarrierName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setCountryIso(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDataRoaming(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setDisplayNameSource(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    return-object p0
.end method

.method public blacklist setEhplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEmbedded(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    return-object p0
.end method

.method public blacklist setGroupDisabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    return-object p0
.end method

.method public blacklist setGroupOwner(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public blacklist setHplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIcon(Landroid/graphics/Bitmap;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blacklist setIconTint(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    return-object p0
.end method

.method public blacklist setId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    return-object p0
.end method

.method public blacklist setMcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMnc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNativeAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setOnlyNonTerrestrialNetwork(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    return-object p0
.end method

.method public blacklist setOpportunistic(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    return-object p0
.end method

.method public blacklist setPortIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    return-object p0
.end method

.method public blacklist setProfileClass(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    return-object p0
.end method

.method public blacklist setSatelliteESOSSupported(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    return-object p0
.end method

.method public blacklist setServiceCapabilities(Ljava/util/Set;)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/telephony/SubscriptionInfo$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid service capability value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    return-object p0
.end method

.method public blacklist setSimSlotIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    return-object p0
.end method

.method public blacklist setTransferStatus(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    return-object p0
.end method

.method public blacklist setType(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    return-object p0
.end method

.method public blacklist setUiccApplicationsEnabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    return-object p0
.end method

.method public blacklist setUsageSetting(I)Landroid/telephony/SubscriptionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    return-object p0
.end method
