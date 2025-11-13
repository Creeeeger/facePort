.class public final Lcom/android/settings/network/ResetNetworkOperationBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final METHOD_RESTART_PHONE_PROCESS:Ljava/lang/String; = "restartPhoneProcess"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final METHOD_RESTART_RILD:Ljava/lang/String; = "restartRild"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mResetSequence:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getUnstableTelephonyContentProviderClient()Landroid/content/ContentProviderClient;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f141ee9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    return-object p0
.end method

.method public final resetEsim(Ljava/lang/String;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;)V
    .locals 1

    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;Ljava/lang/String;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetNetworkDataUsesChina(I)V
    .locals 4

    const-string v0, "ResetNetworkOpBuilder"

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.samsung.android.sm.dcapi"

    const-string v2, "resetDataUsageChnBySubId"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p0, "reset data usage success"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "reset data usage chn error: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final resetTelephonyAndNetworkPolicyManager(I)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;-><init>(ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "phone"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string p1, "netpolicy"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
