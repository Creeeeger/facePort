.class public final Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;
.super Landroid/view/IDisplayChangeWindowController$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayChangeController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-direct {p0}, Landroid/view/IDisplayChangeWindowController$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayChangeController;)V

    return-void
.end method


# virtual methods
.method public final onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .locals 9

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandleRemoteDisplayChange"

    invoke-interface {p5}, Landroid/view/IDisplayChangeWindowCallback;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v8, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayChangeController$DisplayChangeWindowControllerImpl;IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
