.class public Landroid/telecom/PhoneAccount$Builder;
.super Ljava/lang/Object;
.source "PhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mCapabilities:I

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mGroupId:Ljava/lang/String;

.field private greylist-max-o mHighlightColor:I

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIsEnabled:Z

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mShortDescription:Ljava/lang/CharSequence;

.field private blacklist mSimultaneousCallingRestriction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSubscriptionAddress:Landroid/net/Uri;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/telecom/PhoneAccount;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedAudioRoutes()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->hasSimultaneousCallingRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSimultaneousCallingRestriction()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public whitelist addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public whitelist build()Landroid/telecom/PhoneAccount;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "tel"

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    :cond_0
    new-instance v1, Landroid/telecom/PhoneAccount;

    iget-object v3, v0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, v0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    iget-object v5, v0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    iget v6, v0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    iget-object v7, v0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v8, v0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    iget-object v9, v0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v11, v0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iget-object v12, v0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    iget v13, v0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    iget-boolean v14, v0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    iget-object v15, v0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    iget-object v2, v0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Ljava/util/Set;Landroid/telecom/PhoneAccount-IA;)V

    return-object v1
.end method

.method public whitelist clearSimultaneousCallingRestriction()Landroid/telecom/PhoneAccount$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setGroupId(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public whitelist setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public greylist-max-o setIsEnabled(Z)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public greylist-max-o setLabel(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setSimultaneousCallingRestriction(Ljava/util/Set;)Landroid/telecom/PhoneAccount$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the Set of PhoneAccountHandles must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public greylist-max-o setSupportedAudioRoutes(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    return-object p0
.end method

.method public whitelist setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method
