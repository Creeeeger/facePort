.class public final Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mUpdateDelegated:Z

.field public mUpdateRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic val$method:Ljava/lang/String;

.field public final synthetic val$pref:Landroidx/preference/Preference;

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->onDataChanged()V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->onDataChanged()V

    return-void
.end method

.method public final onDataChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "isChecked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "getDynamicSummary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "getDynamicTitle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;Landroidx/preference/Preference;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;I)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->this$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->val$pref:Landroidx/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;I)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d044c31 -> :sswitch_2
        -0x6df048a3 -> :sswitch_1
        0x9b0171d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mUpdateDelegated:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
