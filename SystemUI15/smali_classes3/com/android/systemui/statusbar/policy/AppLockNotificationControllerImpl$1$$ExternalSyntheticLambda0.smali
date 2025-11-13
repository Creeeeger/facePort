.class public final synthetic Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mAppLockActiveLockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mAppLockActiveLockedPackages:Ljava/util/ArrayList;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->isAppLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->isAppLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
