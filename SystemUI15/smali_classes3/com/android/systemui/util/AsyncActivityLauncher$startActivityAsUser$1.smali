.class final Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $activityOptions:Landroid/os/Bundle;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $userHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/systemui/util/AsyncActivityLauncher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    iput-object p2, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$activityOptions:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-static {v0}, Lcom/android/systemui/util/AsyncActivityLauncher;->access$getActivityTaskManager$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-static {v0}, Lcom/android/systemui/util/AsyncActivityLauncher;->access$getContext$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-static {v0}, Lcom/android/systemui/util/AsyncActivityLauncher;->access$getContext$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$intent:Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$activityOptions:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-static {v1}, Lcom/android/systemui/util/AsyncActivityLauncher;->access$getMainExecutor$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;

    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;-><init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/app/WaitResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
