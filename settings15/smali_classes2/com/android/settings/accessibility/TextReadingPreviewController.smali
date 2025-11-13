.class Lcom/android/settings/accessibility/TextReadingPreviewController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;


# static fields
.field private static final CHANGE_BY_BUTTON_DELAY_MS:J = 0x12cL

.field private static final CHANGE_BY_SEEKBAR_DELAY_MS:J = 0x64L

.field private static final DISPLAY_SIZE_KEY:Ljava/lang/String; = "display_size"

.field private static final FONT_SIZE_KEY:Ljava/lang/String; = "font_size"

.field private static final FRAME_INITIAL_INDEX:I = 0x0

.field private static final LAYER_INITIAL_INDEX:I = 0x0

.field private static final MIN_COMMIT_INTERVAL_MS:J = 0x320L

.field private static final PREVIEW_KEY:Ljava/lang/String; = "preview"

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
.method public static synthetic $r8$lambda$GlmNc1kakWghd-tckAPcW26ZYdQ(Lcom/android/settings/accessibility/TextReadingPreviewController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/TextReadingPreviewController;->lambda$new$0(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/FontSizeData;Lcom/android/settings/accessibility/DisplaySizeData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreviewController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/TextReadingPreviewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreviewController;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mCommit:Landroid/view/Choreographer$FrameCallback;

    iput-object p3, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    iput-object p4, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    return-void
.end method

.method private createConfig(Landroid/content/res/Configuration;)[Landroid/content/res/Configuration;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    iget-object v0, v0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    iget-object v1, v1, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v2, v0, v1

    new-array v2, v2, [Landroid/content/res/Configuration;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    iget-object v7, v7, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    iget-object v7, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    iget-object v7, v7, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/content/res/Configuration;->densityDpi:I

    mul-int v7, v4, v1

    add-int/2addr v7, v5

    aput-object v6, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPagerIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    iget-object v0, v0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget v1, v1, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    mul-int/2addr v1, v0

    add-int/2addr v1, p0

    return v1
.end method

.method public static getPreviewSampleLayouts(Landroid/content/Context;)[I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0300b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const v3, 0x7f0d07d4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private synthetic lambda$new$0(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->tryCommitFontSizeConfig()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->tryCommitDisplaySizeConfig()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastCommitTime:J

    return-void
.end method

.method private tryCommitDisplaySizeConfig()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget v0, v0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iget v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    iget-object v2, v1, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/android/settings/accessibility/PreviewSizeData;->mDefaultValue:Ljava/lang/Number;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Lcom/android/settings/accessibility/DisplaySizeData;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    new-instance v3, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2}, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/display/DisplayDensityUtils;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    new-instance v3, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0, v2}, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/display/DisplayDensityUtils;II)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    const-string v1, "TextReadingPreviewCtrl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Display size: "

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToItemKeyName(Ljava/lang/String;)I

    move-result v1

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mEntryPoint:I

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToEntryPoint(I)I

    move-result p0

    const/16 v2, 0x1c6

    invoke-static {v2, v1, v0, p0}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIII)V

    :cond_2
    return-void
.end method

.method private tryCommitFontSizeConfig()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget v0, v0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iget v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    iget-object v2, v1, Lcom/android/settings/accessibility/PreviewSizeData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_font_scaling_has_been_changed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, v1, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v3, "font_scale"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    const/4 v1, 0x3

    const-string v2, "TextReadingPreviewCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Font size: "

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToItemKeyName(Ljava/lang/String;)I

    move-result v1

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mEntryPoint:I

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToEntryPoint(I)I

    move-result p0

    const/16 v2, 0x1c6

    invoke-static {v2, v1, v0, p0}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIII)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "preview"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    const-string v0, "font_size"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const-string v0, "display_size"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const-string v0, "Font size preference is null, the preview controller couldn\'t get the info"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizePreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const-string v0, "Display size preference is null, the preview controller couldn\'t get the info"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mFontSizeData:Lcom/android/settings/accessibility/FontSizeData;

    iget p1, p1, Lcom/android/settings/accessibility/PreviewSizeData;->mInitialIndex:I

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    iget p1, p1, Lcom/android/settings/accessibility/PreviewSizeData;->mInitialIndex:I

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibility/TextReadingPreviewController;->getPreviewSampleLayouts(Landroid/content/Context;)[I

    move-result-object v3

    new-instance v4, Lcom/android/settings/display/PreviewPagerAdapter;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->createConfig(Landroid/content/res/Configuration;)[Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v4}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-boolean v0, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mIsLayoutRtl:Z

    array-length v6, v3

    new-array v6, v6, [Landroid/widget/FrameLayout;

    iput-object v6, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v6, v3

    array-length v7, p1

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v1

    aput v6, v8, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    iput-object v6, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    move v6, v2

    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_3

    iget-boolean v7, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mIsLayoutRtl:Z

    if-eqz v7, :cond_1

    array-length v7, v3

    sub-int/2addr v7, v1

    sub-int/2addr v7, v6

    goto :goto_2

    :cond_1
    move v7, v6

    :goto_2
    iget-object v8, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v7

    iget-object v8, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v7

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object v8, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    move v8, v2

    :goto_3
    array-length v9, p1

    if-ge v8, v9, :cond_2

    aget-object v9, p1, v8

    invoke-virtual {v5, v9}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    new-instance v10, Landroid/view/ViewStub;

    invoke-direct {v10, v9}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    aget v9, v3, v6

    invoke-virtual {v10, v9}, Landroid/view/ViewStub;->setLayoutResource(I)V

    new-instance v9, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v9, v4, v6, v8}, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PreviewPagerAdapter;II)V

    invoke-virtual {v10, v9}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v9, v4, Lcom/android/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v7

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iget-object v5, p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    if-eq v4, v5, :cond_4

    iput-object v4, p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    if-eqz v0, :cond_5

    array-length v0, v3

    sub-int/2addr v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iget-object v1, p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    const-string v3, "Preview adapter is null, you should init the preview adapter first"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    if-eq v0, v1, :cond_6

    iput v0, p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_6
    iget p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastFontProgress:I

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mDisplaySizeData:Lcom/android/settings/accessibility/DisplaySizeData;

    iget-object v0, v0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastDisplayProgress:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLastLayerIndex:I

    invoke-virtual {v4, v0, v2, v2}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(III)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public notifyPreferenceChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->getPagerIndex()I

    move-result p0

    iget-object v1, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    const-string v2, "Preview adapter is null, you should init the preview adapter first"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLastLayerIndex:I

    if-eq p0, v1, :cond_0

    iget-object v2, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v3, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    invoke-virtual {v2, p0, v1, v3}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(III)V

    :cond_0
    iput p0, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLastLayerIndex:I

    return-void
.end method

.method public onEndTrackingTouch()V
    .locals 2

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->postCommitDelayed(J)V

    return-void
.end method

.method public onProgressChanged()V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->postCommitDelayed(J)V

    return-void
.end method

.method public postCommitDelayed(J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mLastCommitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    add-long/2addr p1, v2

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentItem(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mPreviewPreference:Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    const-string v1, "Preview adapter is null, you should init the preview adapter first"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEntryPoint(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewController;->mEntryPoint:I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
