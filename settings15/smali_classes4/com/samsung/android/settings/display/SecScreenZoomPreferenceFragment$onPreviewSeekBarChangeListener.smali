.class public final Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final mCommit:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

.field public mCommitDelayMs:J

.field public mIsChanged:Z

.field public mSeekByTouch:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    new-instance p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final commitOnNextFrame()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-wide v2, v2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    const-string v1, "ScreenZoomEvent"

    if-gez v0, :cond_0

    iget-wide v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "commit delay update: delayMs="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    iget-wide v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "post commit: delayMs="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onProgressChanged: progress="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fromUser= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget v0, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setPreviewLayer(I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    const-string v1, "ScreenZoomEvent"

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgressChanged: mSeekByTouch=true delayMs="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgressChanged: mSeekByTouch=false delayMs="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr p2, v0

    int-to-long p0, p2

    const/16 p2, 0x1d18

    const/16 p3, 0x1d06

    invoke-static {p2, p3, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onStartTrackingTouch: progress="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    const/16 p1, 0x1d18

    const/16 v2, 0x1d06

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mAnimationCounter:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onStopTrackingTouch: progress="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecScreenZoomPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
