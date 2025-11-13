.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;
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

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/wm/shell/pip2/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->hideMenu()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->hideMenu()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
