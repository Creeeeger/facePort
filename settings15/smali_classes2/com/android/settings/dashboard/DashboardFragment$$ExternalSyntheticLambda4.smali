.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;-><init>(Lcom/android/settings/dashboard/DashboardFragment;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
