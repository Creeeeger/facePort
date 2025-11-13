.class public Landroid/net/NetworkPolicyManager$Listener;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBlockedReasonChanged(III)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onRestrictBackgroundChanged(Z)V
    .locals 0

    return-void
.end method

.method public blacklist onSubscriptionOverride(III[I)V
    .locals 0

    return-void
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onUidPoliciesChanged(II)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onUidRulesChanged(II)V
    .locals 0

    return-void
.end method
