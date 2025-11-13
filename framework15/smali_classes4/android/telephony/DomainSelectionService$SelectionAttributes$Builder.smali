.class public final Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$SelectionAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCause:I

.field private blacklist mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mIsEmergency:Z

.field private blacklist mIsExitedFromAirplaneMode:Z

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsVideoCall:Z

.field private final blacklist mSelectorType:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mSubId:I


# direct methods
.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSlotIndex:I

    iput p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSubId:I

    iput p3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSelectorType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .locals 15

    new-instance v14, Landroid/telephony/DomainSelectionService$SelectionAttributes;

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSlotIndex:I

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSubId:I

    iget-object v3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCallId:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mAddress:Landroid/net/Uri;

    iget v5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSelectorType:I

    iget-boolean v6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsVideoCall:Z

    iget-boolean v7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsEmergency:Z

    iget-boolean v8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsTestEmergencyNumber:Z

    iget-boolean v9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsExitedFromAirplaneMode:Z

    iget-object v10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget v11, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCause:I

    iget-object v12, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;Landroid/telephony/DomainSelectionService$SelectionAttributes-IA;)V

    return-object v14
.end method

.method public whitelist setAddress(Landroid/net/Uri;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setCallId(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setCsDisconnectCause(I)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCause:I

    return-object p0
.end method

.method public whitelist setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsEmergency:Z

    return-object p0
.end method

.method public whitelist setEmergencyRegistrationResult(Landroid/telephony/EmergencyRegistrationResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-object p0
.end method

.method public whitelist setExitedFromAirplaneMode(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsExitedFromAirplaneMode:Z

    return-object p0
.end method

.method public whitelist setPsDisconnectCause(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public whitelist setTestEmergencyNumber(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsTestEmergencyNumber:Z

    return-object p0
.end method

.method public whitelist setVideoCall(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsVideoCall:Z

    return-object p0
.end method
