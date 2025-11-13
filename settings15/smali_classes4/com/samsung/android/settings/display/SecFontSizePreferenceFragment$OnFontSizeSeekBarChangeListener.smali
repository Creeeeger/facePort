.class public final Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final mCommit:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;

.field public mCommitDelayMs:J

.field public mCurrentFontIndex:I

.field public mLastCommitTime:J

.field public mSeekByTouch:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    new-instance p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final commitOnNextFrame$1()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mLastCommitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommitDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommitDelayMs:J

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCurrentFontIndex:I

    if-eqz p3, :cond_1

    const/16 p2, 0x29

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget-boolean p1, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCurrentFontIndex:I

    iput p1, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCurrentFontIndex:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->changeFontSizeOnPreview(I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mSeekByTouch:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsInSeekBarSetupProcess:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->commitOnNextFrame$1()V

    goto :goto_1

    :cond_4
    :goto_0
    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCommitDelayMs:J

    :goto_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mSeekByTouch:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    iget-boolean p1, p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->commitOnNextFrame$1()V

    :cond_0
    return-void
.end method
