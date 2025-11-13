.class public final synthetic Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPipListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-object v0, p1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPipListener:Lcom/android/systemui/navigationbar/TaskbarDelegate$$ExternalSyntheticLambda0;

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-object v0, p1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
