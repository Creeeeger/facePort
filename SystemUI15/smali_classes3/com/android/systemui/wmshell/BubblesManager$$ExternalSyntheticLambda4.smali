.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mKeyguardShowing:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreamingOrInPreview()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Bubbles"

    const-string v3, "Failed to query dream manager."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamingOrInPreview:Z

    iget-boolean v2, p0, Lcom/android/systemui/wmshell/BubblesManager;->mKeyguardShowing:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mKeyguardShowing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamingOrInPreview:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handleKeyguardOrDreamChange isUnlockedShade=%b keyguardShowing=%b dreamingOrInPreview=%b"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
