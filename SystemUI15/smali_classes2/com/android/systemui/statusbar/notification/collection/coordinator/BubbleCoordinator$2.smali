.class Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmInterceptedDismissalEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "BubbleCoordinator"

    return-object p0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fputmOnEndDismissInterception(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor$OnEndDismissInterception;)V

    return-void
.end method

.method public shouldInterceptDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmBubblesManagerOptional(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmBubblesManagerOptional(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_0
    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v7}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v3, p1}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda11;

    invoke-direct {v8, v3, v7}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;)V

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0, v6, v5, v8}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda11;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v7, v5}, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Object;Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda12;Ljava/util/concurrent/CountDownLatch;)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    aget-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmInterceptedDismissalEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->-$$Nest$fgetmInterceptedDismissalEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v1
.end method
