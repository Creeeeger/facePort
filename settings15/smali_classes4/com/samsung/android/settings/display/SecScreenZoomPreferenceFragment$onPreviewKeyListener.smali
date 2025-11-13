.class public final Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string/jumbo p1, "onKey: code="

    const-string v0, " action="

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/16 p3, 0x15

    const-string v0, "ScreenZoomEvent"

    const/4 v1, 0x1

    if-eq p2, p3, :cond_2

    const/16 p3, 0x16

    if-eq p2, p3, :cond_0

    const/16 p3, 0x45

    if-eq p2, p3, :cond_2

    const/16 p3, 0x51

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    if-ge p1, p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "plus key: progress="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v1

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "minus key: progress="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p1, v1

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
