.class public final Lcom/android/settings/ResetSubscriptionContract$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/ResetSubscriptionContract;


# direct methods
.method public constructor <init>(Lcom/android/settings/ResetSubscriptionContract;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSubscriptionContract$1;->this$0:Lcom/android/settings/ResetSubscriptionContract;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract$1;->this$0:Lcom/android/settings/ResetSubscriptionContract;

    iget-object v0, v0, Lcom/android/settings/ResetSubscriptionContract;->mSubscriptionsUpdateNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/settings/ResetSubscriptionContract$1;->this$0:Lcom/android/settings/ResetSubscriptionContract;

    iget-object v0, v0, Lcom/android/settings/ResetSubscriptionContract;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ResetSubscriptionContract$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetSubscriptionContract$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ResetSubscriptionContract$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
