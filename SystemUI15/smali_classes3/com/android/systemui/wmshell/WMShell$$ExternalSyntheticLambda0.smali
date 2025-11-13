.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/model/SysUiState$SysUiStateCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiStateChanged(J)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v0, 0x80ca4c

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x2

    and-long/2addr v5, p1

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-wide/16 v5, 0x10

    and-long/2addr p1, v5

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    move v1, v4

    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    if-eq p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;I)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsA11yButtonEnabled:Z

    if-eq p1, v1, :cond_4

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsA11yButtonEnabled:Z

    :cond_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v0, 0x80ca4c

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/Pip;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZJ)V

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
