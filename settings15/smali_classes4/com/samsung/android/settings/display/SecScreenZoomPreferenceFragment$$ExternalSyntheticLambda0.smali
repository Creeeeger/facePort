.class public final synthetic Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    packed-switch p1, :pswitch_data_0

    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "plus click: progress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr p1, v1

    const-string v2, "ScreenZoomEvent"

    invoke-static {v0, p1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "minus click: progress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const-string v2, "ScreenZoomEvent"

    invoke-static {v0, p1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
