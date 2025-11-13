.class public final Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
.super Ljava/lang/Object;
.source "ImsRegistrationAttributes.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRegistrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributeFlags:I

.field private blacklist mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegistrationTech:I

.field private blacklist mSipDetails:Landroid/telephony/ims/SipDetails;


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/ImsRegistrationAttributes;
    .locals 7

    new-instance v6, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    invoke-static {v0}, Landroid/telephony/ims/RegistrationManager;->getAccessType(I)I

    move-result v2

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    iget-object v4, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    iget-object v5, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mSipDetails:Landroid/telephony/ims/SipDetails;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;Landroid/telephony/ims/SipDetails;)V

    return-object v6
.end method

.method public whitelist setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/ImsRegistrationAttributes$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature tag set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFlagRegistrationTypeEmergency()Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    return-object p0
.end method

.method public blacklist setFlagVirtualRegistrationForEmergencyCall()Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mAttributeFlags:I

    return-object p0
.end method

.method public whitelist setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-object p0
.end method
