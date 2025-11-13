.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->setUiBlockerFinished(Z)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    monitor-enter p1

    const/4 p0, 0x1

    :try_start_0
    iput-boolean p0, p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mUpdateDelegated:Z

    iget-object p0, p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
