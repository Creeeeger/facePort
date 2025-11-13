.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

.field public final synthetic f$1:Landroid/app/RemoteAction;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;Landroid/app/RemoteAction;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;->f$1:Landroid/app/RemoteAction;

    iput-boolean p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;->f$1:Landroid/app/RemoteAction;

    iget-boolean p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;->f$2:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "PipMenuView"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string v5, "%s: Failed to send action, %s"

    const-wide v2, -0x351c0366a67cc070L    # -5.982334278697997E52

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_CUSTOM_CLOSE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowTouches:Z

    iget-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget p1, p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipForceCloseDelay:I

    int-to-long v1, p1

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
