.class public final Lcom/android/settings/widget/LabeledSeekBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/LabeledSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v0, v0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object p3, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v0, p3, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object p3, p3, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :cond_0
    iget-object p3, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    iget p3, p3, Lcom/android/settings/widget/LabeledSeekBar;->mLastProgress:I

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLastProgress:I

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
