.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPad;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/TouchPad;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadLine:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->startFadeInAnimation(Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
