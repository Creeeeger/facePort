.class Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;
.super Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-static {v2}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-static {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->access$002(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/AppTransitionAnimationSpec;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecCompat;

    invoke-virtual {v3}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecCompat;->toAppTransitionAnimationSpec()Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    aput-object v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :catch_0
    return-object v0
.end method
