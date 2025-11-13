.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_0
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "category"

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
