.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onBackAnimationFinished()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;I)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string v5, "Animation didn\'t finish in %d ms. Resetting..."

    const-wide v2, -0x6217c3807c07ca09L

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackAnimation()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/window/flags/Flags;->predictiveBackSystemAnims()Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x44f77ef2a1b9319fL    # 1.775299237090247E24

    const/4 v4, 0x0

    const-string v5, "Back animation aconfig flag is enabled, therefore developer settings flag is ignored and no content observer registered"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/window/flags/Flags;->predictiveBackSystemAnims()Z

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "Back animation enabled=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x18e6b5776b4bcaacL    # -4.401754544292948E188

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$3;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    new-instance v1, Landroid/window/BackAnimationAdapter;

    invoke-direct {v1, v0}, Landroid/window/BackAnimationAdapter;-><init>(Landroid/window/IBackAnimationRunner;)V

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    const-string v2, "extra_shell_back_animation"

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v2, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
