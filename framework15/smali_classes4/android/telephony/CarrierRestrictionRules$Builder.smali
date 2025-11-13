.class public final Landroid/telephony/CarrierRestrictionRules$Builder;
.super Ljava/lang/Object;
.source "CarrierRestrictionRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierRestrictionRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRules:Landroid/telephony/CarrierRestrictionRules;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/CarrierRestrictionRules;-><init>(Landroid/telephony/CarrierRestrictionRules-IA;)V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/CarrierRestrictionRules;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    return-object v0
.end method

.method public whitelist setAllCarriersAllowed()Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->carrierRestrictionRulesEnhancement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionStatus(Landroid/telephony/CarrierRestrictionRules;I)V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmAllowedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmExcludedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmUseCarrierLockInfo(Landroid/telephony/CarrierRestrictionRules;Z)V

    :cond_0
    return-object p0
.end method

.method public blacklist setAllowedCarrierInfo(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmAllowedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    return-object p0
.end method

.method public whitelist setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    return-object p0
.end method

.method public blacklist setCarrierLockInfoFeature(Z)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmUseCarrierLockInfo(Landroid/telephony/CarrierRestrictionRules;Z)V

    return-object p0
.end method

.method public blacklist setCarrierRestrictionStatus(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionStatus(Landroid/telephony/CarrierRestrictionRules;I)V

    return-object p0
.end method

.method public whitelist setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    return-object p0
.end method

.method public blacklist setExcludedCarrierInfo(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmExcludedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    return-object p0
.end method

.method public whitelist setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    return-object p0
.end method

.method public whitelist setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmMultiSimPolicy(Landroid/telephony/CarrierRestrictionRules;I)V

    return-object p0
.end method
