.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;->this$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    const/16 v4, 0x65

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    if-ne p1, v4, :cond_4

    iget-object p1, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x32

    const/4 v5, 0x4

    if-ne v0, v2, :cond_3

    if-ne v1, v5, :cond_2

    if-ne p1, v4, :cond_2

    iget-object p1, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    if-ne p1, v4, :cond_4

    iget-object p1, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-ne v1, v5, :cond_4

    if-ne p1, v4, :cond_4

    iget-object p1, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
