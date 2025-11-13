.class public final Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipMenuControlService;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/PipMenuControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipMenuControlService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    iget-object v2, v1, Lcom/android/wm/shell/pip/PipMenuControlService;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    const-string v3, "PipMenuControlService"

    if-nez v2, :cond_0

    sget p0, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    const-string p0, "mPhonePipMenuController is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v0, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    const-string p1, "handle hideMenu"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v1, Lcom/android/wm/shell/pip/PipMenuControlService;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    const-string p1, "handle showMenu"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v1, Lcom/android/wm/shell/pip/PipMenuControlService;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
