.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    return-void
.end method


# virtual methods
.method public final onStateChanged(ZZZZZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-boolean p1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mPanelExpanded:Z

    if-eq p6, p1, :cond_0

    iput-boolean p6, p0, Lcom/android/systemui/wmshell/BubblesManager;->mPanelExpanded:Z

    iget-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p6, p4}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mKeyguardShowing:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamingOrInPreview:Z

    if-eqz p1, :cond_1

    if-nez p7, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
