.class public final Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final mCommit:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;

.field public mCommitDelayMs:J

.field public mCurrentScale:F

.field public mLastCommitTime:J

.field public mSeekByTouch:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;

    new-instance p1, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final commitOnNextFrame()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mLastCommitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommitDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommitDelayMs:J

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    move p2, v1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f03016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCurrentScale:F

    if-eqz p3, :cond_2

    const/16 p2, 0x29

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCurrentScale:F

    iget-object p2, v0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setCursorThicknessScale(F)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mSeekByTouch:Z

    if-eqz p1, :cond_3

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommitDelayMs:J

    goto :goto_1

    :cond_3
    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->commitOnNextFrame()V

    :goto_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mSeekByTouch:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->commitOnNextFrame()V

    return-void
.end method
