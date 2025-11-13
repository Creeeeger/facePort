.class Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "SecScreenZoomPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private final mCommit:Landroid/view/Choreographer$FrameCallback;

.field private mCommitDelayMs:J

.field private mIsChanged:Z

.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method public static synthetic $r8$lambda$3CAAE8MSuA6TtByE9XpRv3EfBtU(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    return-void
.end method

.method public static synthetic $r8$lambda$LD52pD68osLDOuZlPg85bQfE_tU(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->lambda$new$0(J)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    return-void
.end method

.method private commitOnNextFrame()V
    .locals 6

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmLastCommitTime(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    const-string v1, "ScreenZoomEvent"

    if-gez v0, :cond_0

    .line 220
    iget-wide v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit delay update: delayMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 225
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    iget-wide v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post commit: delayMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$mcommit(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fputmLastCommitTime(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;J)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "commit: mLastCommitTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmLastCommitTime(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenZoomEvent"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged: progress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fromUser= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget v0, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 176
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    .line 180
    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$msetPreviewLayer(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;IZ)V

    .line 181
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    const-string v1, "ScreenZoomEvent"

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x64

    .line 182
    iput-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: mSeekByTouch=true delayMs="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x12c

    .line 185
    iput-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: mSeekByTouch=false delayMs="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    .line 189
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 190
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1d06

    add-int/2addr p2, v0

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartTrackingTouch: progress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->getMetricsCategory()I

    move-result v0

    .line 206
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v1, p1

    const/16 p1, 0x1d06

    .line 205
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 207
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmPreviewPagerAdapter(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmPreviewPagerAdapter(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmPreviewPagerAdapter(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    .line 215
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopTrackingTouch: progress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecScreenZoomPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
