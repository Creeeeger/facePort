.class public final synthetic Lcom/android/settings/ResetSubscriptionContract$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/ResetSubscriptionContract$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/ResetSubscriptionContract$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ResetSubscriptionContract$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ResetSubscriptionContract$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/ResetSubscriptionContract$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/ResetSubscriptionContract$1;

    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract$1;->this$0:Lcom/android/settings/ResetSubscriptionContract;

    iget-object v0, v0, Lcom/android/settings/ResetSubscriptionContract;->mSubscriptionsUpdateNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract$1;->this$0:Lcom/android/settings/ResetSubscriptionContract;

    invoke-virtual {v0}, Lcom/android/settings/ResetSubscriptionContract;->getAnyMissingSubscriptionId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/ResetSubscriptionContract$1;->this$0:Lcom/android/settings/ResetSubscriptionContract;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " no longer active."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetNetworkConfirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
