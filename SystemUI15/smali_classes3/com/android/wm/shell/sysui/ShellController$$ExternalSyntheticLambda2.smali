.class public final synthetic Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController;Landroid/graphics/Rect;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController;Z)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0}, Lcom/android/wm/shell/sysui/ShellController;->onKeyguardDismissAnimationFinished()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/SurfaceControlRegistry;->createProcessInstance(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

    invoke-virtual {p0}, Lcom/android/wm/shell/sysui/ShellInit;->init()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    const/4 p0, 0x0

    throw p0

    :pswitch_2
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    const/4 p0, 0x0

    throw p0

    :pswitch_3
    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mInsetsChangeListener:Lcom/android/wm/shell/sysui/ShellController$1;

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
