.class public final synthetic Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget p1, p1, p2

    const-string v0, "commit: index="

    const-string v1, " densityDpi="

    const-string v2, "ScreenZoomEvent"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    invoke-static {p2, p2, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(III)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "commit: mLastCommitTime="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    iget-wide v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
