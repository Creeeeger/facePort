.class public final synthetic Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    add-int/2addr p1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekBarChangeMagnitude:I

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
