.class public final Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const p1, 0x7f1408fd

    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStart()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePosture:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOriginalGravity:I

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOriginalGravity:I

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
