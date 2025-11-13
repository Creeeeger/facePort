.class public final synthetic Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mLastCommitTime:J

    iget p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->mCurrentFontIndex:I

    sget-object p2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p1, 0x1

    int-to-long v0, p2

    const/16 p2, 0x106a

    const/16 v2, 0x106c

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBooster:Lcom/samsung/android/settings/Booster;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/samsung/android/settings/Booster;->mLastBoosterTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p2, Lcom/samsung/android/settings/Booster;->mLastBoosterDuration:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p2, Lcom/samsung/android/settings/Booster;->mLastBoosterTime:J

    const/16 v0, 0xbb8

    int-to-long v1, v0

    iput-wide v1, p2, Lcom/samsung/android/settings/Booster;->mLastBoosterDuration:J

    iget v1, p2, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    if-lez v1, :cond_1

    iget-object v1, p2, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    iget v1, p2, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    if-lez v1, :cond_2

    iget-object p2, p2, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "font_size"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p2, "SecFontSizePreferenceFragment"

    const-string v0, "com.samsung.settings.FONT_SIZE_CHANGED broadcast."

    invoke-static {p2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return-void
.end method
