.class Lcom/android/settings/accessibility/TextReadingPreviewController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TextReadingPreviewController.java"

# interfaces
.implements Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;


# static fields
.field private static final CHANGE_BY_BUTTON_DELAY_MS:J = 0x12cL

.field private static final CHANGE_BY_SEEKBAR_DELAY_MS:J = 0x64L

.field private static final DISPLAY_SIZE_KEY:Ljava/lang/String; = "display_size"

.field private static final FONT_SIZE_KEY:Ljava/lang/String; = "font_size"

.field private static final MIN_COMMIT_INTERVAL_MS:J = 0x320L

.field private static final PREVIEW_KEY:Ljava/lang/String; = "preview"

.field static final PREVIEW_SAMPLE_RES_IDS:[I

.field private static final TAG:Ljava/lang/String; = "TextReadingPreviewCtrl"


# instance fields
.field private final mCommit:Landroid/view/Choreographer$FrameCallback;

.field private final mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

.field private mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

.field private mEntryPoint:I

.field private final mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

.field private mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

.field private mLastCommitTime:J

.field private mLastDisplayProgress:I

.field private mLastFontProgress:I

.field private mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;


# direct methods
.method public static synthetic $r8$lambda$c8ucCjmg5PWalXpwTr0hueIu-fY(Lcom/android/settings/accessibility/TextReadingPreviewController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/TextReadingPreviewController;->lambda$new$0(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 45
    sget v1, Lcom/android/settings/R$layout;->accessibility_text_reading_preview_app_grid:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$layout;->screen_zoom_preview_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$layout;->accessibility_text_reading_preview_mail_content:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/accessibility/TextReadingPreviewController;->PREVIEW_SAMPLE_RES_IDS:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/FontSizeData;Lcom/android/settings/accessibility/DisplaySizeData;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreviewController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/TextReadingPreviewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreviewController;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mCommit:Landroid/view/Choreographer$FrameCallback;

    .line 78
    iput-object p3, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    .line 79
    iput-object p4, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    return-void
.end method

.method private createConfig(Landroid/content/res/Configuration;)[Landroid/content/res/Configuration;
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v2, v0, v1

    .line 217
    new-array v2, v2, [Landroid/content/res/Configuration;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 221
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 222
    iget-object v7, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 223
    iget-object v7, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/content/res/Configuration;->densityDpi:I

    mul-int v7, v4, v1

    add-int/2addr v7, v5

    .line 225
    aput-object v6, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private synthetic lambda$new$0(J)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->tryCommitFontSizeConfig()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->tryCommitDisplaySizeConfig()V

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastCommitTime:J

    return-void
.end method

.method private tryCommitDisplaySizeConfig()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    .line 196
    iget v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    if-eq v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/DisplaySizeData;->commit(I)V

    .line 198
    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    const/4 v1, 0x3

    const-string v2, "TextReadingPreviewCtrl"

    .line 200
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x1c6

    .line 204
    iget-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    .line 207
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToItemKeyName(Ljava/lang/String;)I

    move-result v2

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mEntryPoint:I

    .line 209
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToEntryPoint(I)I

    move-result p0

    .line 204
    invoke-static {v1, v2, v0, p0}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIII)V

    :cond_1
    return-void
.end method

.method private tryCommitFontSizeConfig()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    .line 178
    iget v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/FontSizeData;->commit(I)V

    .line 180
    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    const/4 v1, 0x3

    const-string v2, "TextReadingPreviewCtrl"

    .line 182
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x1c6

    .line 186
    iget-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    .line 188
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToItemKeyName(Ljava/lang/String;)I

    move-result v2

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mEntryPoint:I

    .line 190
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToEntryPoint(I)I

    move-result p0

    .line 186
    invoke-static {v1, v2, v0, p0}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "preview"

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    const-string v0, "font_size"

    .line 93
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const-string v0, "display_size"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    .line 95
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const-string v0, "Font size preference is null, the preview controller couldn\'t get the info"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const-string v0, "Display size preference is null, the preview controller couldn\'t get the info"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/PreviewSizeData;->getInitialIndex()I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    .line 103
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/PreviewSizeData;->getInitialIndex()I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    .line 105
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 108
    :goto_0
    new-instance v0, Lcom/android/settings/display/PreviewPagerAdapter;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/accessibility/TextReadingPreviewController;->PREVIEW_SAMPLE_RES_IDS:[I

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->createConfig(Landroid/content/res/Configuration;)[Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, v3, v1, v4, p1}, Lcom/android/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->setPreviewAdapter(Lcom/android/settings/display/PreviewPagerAdapter;)V

    .line 111
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public notifyPreferenceChanged()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v2

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 128
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->notifyPreviewPagerChanged(I)V

    return-void
.end method

.method public onEndTrackingTouch()V
    .locals 2

    const-wide/16 v0, 0x64

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->postCommitDelayed(J)V

    return-void
.end method

.method public onProgressChanged()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->postCommitDelayed(J)V

    return-void
.end method

.method postCommitDelayed(J)V
    .locals 4

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastCommitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    add-long/2addr p1, v2

    .line 171
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method setEntryPoint(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mEntryPoint:I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
