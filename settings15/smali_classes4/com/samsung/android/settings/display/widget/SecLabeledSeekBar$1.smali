.class public final Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecLabeledSeekBar.onProgressChanged: progress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "listener >>>"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object v0, v0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object v2, v0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object v0, v0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    goto :goto_0

    :cond_0
    const-string v0, "listener=null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "listener <<<"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v0, v0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    if-eq p2, v0, :cond_2

    if-eqz p3, :cond_1

    const/16 p3, 0x29

    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iput p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    const-string/jumbo p0, "onProgressChanged: update progress="

    invoke-static {p2, p0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecLabeledSeekBar.onStartTrackingTouch: progress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v1, v1, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "listener >>>"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    const-string p0, "listener=null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "listener <<<"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecLabeledSeekBar.onStopTrackingTouch: progress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v1, v1, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "listener >>>"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    const-string p0, "listener=null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "listener <<<"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
