.class public final Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/function/Consumer;


# instance fields
.field public canceller:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/view/WindowInsets;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v0, 0x1f4

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Ljava/lang/Runnable;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
