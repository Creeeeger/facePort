.class public final Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

.field public final synthetic this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;-><init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    iget-object v1, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v0, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    aget-object v0, v3, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    iget-boolean v2, v1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    if-eqz v2, :cond_2

    const/4 p3, 0x0

    iput-boolean p3, v1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    check-cast v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    check-cast v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;

    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->onUserInteractionFinalized(Landroid/widget/SeekBar;I)V

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->onUserInteractionFinalized(Landroid/widget/SeekBar;I)V

    :cond_0
    return-void
.end method
