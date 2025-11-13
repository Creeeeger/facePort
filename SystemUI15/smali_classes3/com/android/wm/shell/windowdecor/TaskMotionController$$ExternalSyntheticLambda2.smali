.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->start()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
