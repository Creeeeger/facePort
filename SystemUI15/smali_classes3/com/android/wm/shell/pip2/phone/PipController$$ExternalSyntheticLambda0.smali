.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipController;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iput v0, v1, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget v0, v1, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipController$1;-><init>(Lcom/android/wm/shell/pip2/phone/PipController;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip2/phone/PipController;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    const-string v2, "extra_shell_pip"

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipController$2;-><init>(Lcom/android/wm/shell/pip2/phone/PipController;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    return-void
.end method
