.class public final Lcom/android/settings/ResetNetworkRequest;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field protected static final KEY_APN_SUBID:Ljava/lang/String; = "resetApnSubId"

.field protected static final KEY_ESIM_PACKAGE:Ljava/lang/String; = "resetEsimPackage"

.field protected static final KEY_RESET_OPTIONS:Ljava/lang/String; = "resetNetworkOptions"

.field protected static final KEY_TELEPHONY_NET_POLICY_MANAGER_SUBID:Ljava/lang/String; = "resetTelephonyNetPolicySubId"


# instance fields
.field public mResetApn:I

.field public mResetEsimPackageName:Ljava/lang/String;

.field public mResetOptions:I

.field public mResetTelephonyManager:I

.field public mSubscriptionIdToResetIms:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkRequest;->mResetTelephonyManager:I

    iput v0, p0, Lcom/android/settings/ResetNetworkRequest;->mResetApn:I

    iput v0, p0, Lcom/android/settings/ResetNetworkRequest;->mSubscriptionIdToResetIms:I

    iput p1, p0, Lcom/android/settings/ResetNetworkRequest;->mResetOptions:I

    return-void
.end method


# virtual methods
.method public final toResetNetworkOperationBuilder(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 3

    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/android/settings/ResetNetworkRequest;->mResetOptions:I

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;-><init>(I)V

    const-string v2, "connectivity"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;-><init>(I)V

    const-string v2, "vpn_management"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;-><init>(I)V

    const-string v2, "wifi"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda11;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;Landroid/os/Looper;)V

    const-string p2, "wifip2p"

    invoke-virtual {v0, p2, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_3
    iget-object p2, p0, Lcom/android/settings/ResetNetworkRequest;->mResetEsimPackageName:Ljava/lang/String;

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetEsim(Ljava/lang/String;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;)V

    :cond_4
    iget p2, p0, Lcom/android/settings/ResetNetworkRequest;->mResetTelephonyManager:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    invoke-virtual {v0, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetTelephonyAndNetworkPolicyManager(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetNetworkDataUsesChina(I)V

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_6

    new-instance p2, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;-><init>(I)V

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_6
    iget p2, p0, Lcom/android/settings/ResetNetworkRequest;->mResetApn:I

    if-eq p2, v1, :cond_7

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    iget-object p2, v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_8

    new-instance p2, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda3;

    iget p0, p0, Lcom/android/settings/ResetNetworkRequest;->mSubscriptionIdToResetIms:I

    invoke-direct {p2, p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda3;-><init>(I)V

    const-string p0, "phone"

    invoke-virtual {v0, p0, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_8
    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_9

    new-instance p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    iget-object p2, v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_a

    new-instance p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    iget-object p1, v0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method
