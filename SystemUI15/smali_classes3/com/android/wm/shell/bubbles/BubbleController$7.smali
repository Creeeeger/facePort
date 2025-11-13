.class public final Lcom/android/wm/shell/bubbles/BubbleController$7;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v4, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0xcd8a42d1d85c240L    # -5.103814552693612E246

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, "com.android.wm.shell.bubbles.action.SHOW_BUBBLES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$7;)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
