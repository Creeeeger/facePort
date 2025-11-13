.class public Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DENSITY_BASE_PIXEL:[F

.field public static mIsListenerRegistered:Z


# instance fields
.field public mContent:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mConvertRatio:F

.field public mCurrentIndex:I

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

.field public mInitialIndex:I

.field public mIsBottomButtonVisible:Z

.field public mIsFromAccessibility:Z

.field public mIsMultiPaneMode:Z

.field public mIsMultiWindowMode:Z

.field public mIsTabletDevice:Z

.field public mLarger:Landroid/view/View;

.field public mLastCommitTime:J

.field public mOrientation:I

.field public mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field public mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

.field public mResources:Landroid/content/res/Resources;

.field public mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

.field public mSmaller:Landroid/view/View;

.field public mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1ae14

    const/high16 v2, 0x40900000    # 4.5f

    const/4 v3, 0x3

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x40600000    # 3.5f

    const/4 v8, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [F

    aput v7, v0, v8

    const/high16 v1, 0x40700000    # 3.75f

    aput v1, v0, v6

    aput v4, v0, v5

    const/high16 v1, 0x40880000    # 4.25f

    aput v1, v0, v3

    const/4 v1, 0x4

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v3, [F

    aput v7, v0, v8

    aput v4, v0, v6

    aput v2, v0, v5

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    sput-boolean v8, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "SecScreenZoomPreferenceFragment"

    if-eqz v2, :cond_0

    const-string v7, "mLastCommitTime"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateContent: mLastCommitTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ScreenZoomEvent"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mOrientation:I

    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/app/ActivityClient;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    invoke-static {v7}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v4

    :goto_0
    iput-boolean v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    sput-boolean v4, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v8, :cond_3

    const v7, 0x7f0d08ba

    :goto_1
    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    iget-boolean v8, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-eqz v8, :cond_5

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const v7, 0x7f0d099b

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v7, :cond_6

    const v7, 0x7f0d0999

    goto :goto_1

    :cond_6
    const v7, 0x7f0d0995

    goto :goto_1

    :goto_3
    invoke-virtual {v8, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContent:Landroid/view/View;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    const v14, 0x7f060738

    const v15, 0x7f0a0016

    const/4 v7, 0x0

    if-eqz v8, :cond_b

    iget-object v0, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v6, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mIntent:Landroid/content/Intent;

    const-string v9, "fontFileUri"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v9, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPreviewFont(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Typeface;

    move-result-object v6

    new-instance v9, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-direct {v9}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;-><init>()V

    iput-object v9, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    iput-object v6, v9, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mTypeface:Landroid/graphics/Typeface;

    const v9, 0x7f0a067d

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/widget/ListView;

    iget-object v9, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v9, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v10, v9}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    if-eqz v2, :cond_8

    const-string v9, "PreviewFontMessageList"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v9, v4

    :goto_4
    array-length v11, v2

    if-ge v9, v11, :cond_9

    iget-object v11, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    aget-object v12, v2, v9

    if-ne v9, v5, :cond_7

    move v13, v5

    goto :goto_5

    :cond_7
    move v13, v4

    :goto_5
    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    add-int/2addr v9, v5

    goto :goto_4

    :cond_8
    iget-object v2, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    const v9, 0x7f140fe7

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v4}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    iget-object v2, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    const v9, 0x7f140fe8

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v5}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    iget-object v2, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "fontName"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    const v9, 0x7f140fe9

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->addItem(Ljava/lang/String;Z)V

    :cond_9
    const v2, 0x7f0a067c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0a067e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v8, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    if-lt v2, v3, :cond_a

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_a
    new-instance v2, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;

    invoke-direct {v2, v8, v13, v0}, Lcom/samsung/android/settings/display/SecFontTrialSettings$1;-><init>(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/TextView;Landroid/content/res/Resources;)V

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f0802d2

    invoke-virtual {v0, v2, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f06017e

    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v3, 0x7f0a0687

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda1;

    move-object v7, v2

    move-object v11, v3

    move-object v12, v0

    const/16 v4, 0xf

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/settings/display/SecFontTrialSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecFontTrialSettings;Landroid/widget/EditText;Landroid/widget/ListView;Landroid/widget/ImageButton;Landroid/content/res/Resources;Landroid/widget/TextView;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-object v1

    :cond_b
    const/16 v2, 0xf

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {v8, v4, v9}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v8, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/high16 v8, 0x3f800000    # 1.0f

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iget-object v9, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v9

    aget v3, v3, v9

    iput v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mConvertRatio:F

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLayoutDirection()I

    iget-object v11, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v11, v11

    new-array v12, v11, [Landroid/content/res/Configuration;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v7, "generateContent: mValues.length="

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v7, v7

    invoke-static {v13, v7, v6}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v6, v4

    :goto_6
    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v7, v7

    if-ge v6, v7, :cond_f

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v13, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_7

    :cond_c
    iget-object v13, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget v13, v13, v6

    iput v13, v7, Landroid/content/res/Configuration;->densityDpi:I

    :cond_d
    :goto_7
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    aput-object v7, v12, v6

    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget v7, v7, v6

    if-ne v3, v7, :cond_e

    iput v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    :cond_e
    add-int/2addr v6, v5

    goto :goto_6

    :cond_f
    const v3, 0x7f0d0996

    filled-new-array {v3}, [I

    move-result-object v3

    const v6, 0x7f0a0b95

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager;

    iput-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v6, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    invoke-direct {v6}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-array v7, v5, [Landroid/widget/FrameLayout;

    iput-object v7, v6, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const/4 v8, 0x2

    new-array v10, v8, [I

    aput v11, v10, v5

    aput v5, v10, v4

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    iput-object v10, v6, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mViewStubInflated:[[Z

    iput-object v9, v6, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v10, v7, v4

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v13, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    aget-object v10, v7, v4

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    move v7, v4

    :goto_8
    if-ge v7, v11, :cond_10

    aget-object v10, v12, v7

    invoke-virtual {v9, v10}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    new-instance v2, Landroid/view/ViewStub;

    invoke-direct {v2, v10}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    aget v10, v3, v4

    invoke-virtual {v2, v10}, Landroid/view/ViewStub;->setLayoutResource(I)V

    new-instance v10, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v10, v6, v4, v7}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;II)V

    invoke-virtual {v2, v10}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v10, v6, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v10, v10, v4

    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/2addr v7, v5

    const/16 v2, 0xf

    goto :goto_8

    :cond_10
    iput-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v6}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v3, "getScreenSizeinformation() size : "

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "display_size_forced"

    invoke-static {v2, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    const/16 v9, 0x5a0

    const-string v10, "SecDisplayUtils"

    if-eqz v2, :cond_12

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    array-length v3, v2

    if-le v3, v5, :cond_11

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    :cond_11
    move v2, v9

    goto :goto_9

    :cond_12
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget v2, v6, Landroid/graphics/Point;->x:I

    :goto_9
    if-lt v2, v9, :cond_13

    move v3, v8

    goto :goto_a

    :cond_13
    const/16 v3, 0x2d0

    if-le v2, v3, :cond_14

    const/16 v3, 0x438

    if-gt v2, v3, :cond_14

    move v3, v5

    goto :goto_a

    :cond_14
    move v3, v4

    :goto_a
    const-string v6, "getCurrentResolution: width = "

    const-string v9, "currentResolution = "

    invoke-static {v6, v9, v2, v3, v10}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_b

    :catch_0
    const-string v2, "getInitialDisplaySize() exception!!!"

    invoke-static {v10, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v14

    :goto_b
    const/16 v2, 0x8

    if-ne v3, v14, :cond_15

    const v3, 0x7f0a0d05

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    goto :goto_c

    :cond_15
    const v3, 0x7f0a0d8f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    :goto_c
    iput-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    if-eqz v3, :cond_20

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v9, v6

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v3, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLabels:[Ljava/lang/String;

    move v9, v4

    :goto_d
    array-length v10, v6

    if-ge v9, v10, :cond_16

    iget-object v10, v3, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLabels:[Ljava/lang/String;

    aget v11, v6, v9

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    add-int/2addr v9, v5

    goto :goto_d

    :cond_16
    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v6, v6

    sub-int/2addr v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setProgress(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v3, v3

    if-eq v3, v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "easy_mode_switch"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17

    goto :goto_e

    :cond_17
    sget-boolean v3, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-nez v3, :cond_19

    :cond_18
    :goto_e
    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_19
    iget-boolean v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v3, :cond_1c

    iget v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mOrientation:I

    if-ne v3, v5, :cond_1a

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x43848000    # 265.0f

    mul-float/2addr v3, v6

    goto :goto_f

    :cond_1a
    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f070dc2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x44048000    # 530.0f

    mul-float/2addr v6, v9

    int-to-float v3, v3

    add-float/2addr v3, v6

    :goto_f
    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    cmpg-float v3, v6, v3

    if-gez v3, :cond_1b

    move v3, v5

    goto :goto_10

    :cond_1b
    move v3, v4

    :goto_10
    iput-boolean v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    goto :goto_11

    :cond_1c
    iput-boolean v4, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    :goto_11
    iget-boolean v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    const v6, 0x7f0a0873

    const v9, 0x7f0a0e91

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0e92

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    const v2, 0x7f0a0878

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    if-eqz v2, :cond_1d

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_1e
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    :cond_1f
    :goto_12
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    if-eqz v2, :cond_20

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    if-eqz v3, :cond_20

    new-instance v3, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v5}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    const v2, 0x7f0a067b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f070c4d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v6, "11"

    const-string v9, "99"

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f1426de

    invoke-virtual {v3, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v10

    invoke-static {v3, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v11

    if-eq v10, v14, :cond_23

    if-eq v11, v14, :cond_23

    add-int/2addr v11, v8

    if-le v10, v11, :cond_21

    goto :goto_13

    :cond_21
    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    :goto_13
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v10, v6, :cond_22

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_22
    new-instance v6, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;

    invoke-direct {v6, v0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v6, v11, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0606d5

    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v3, v11, v10, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_14
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f060738

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f070c03

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v7}, Landroid/view/View;->semSetRoundedCorners(ILandroid/util/Pair;)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-eqz v2, :cond_24

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    if-eqz v2, :cond_24

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_24
    iget v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setPreviewLayer(I)V

    iget v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mOrientation:I

    if-ne v2, v5, :cond_25

    goto :goto_15

    :cond_25
    move v5, v4

    :goto_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x10502c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_16

    :cond_26
    move v2, v4

    :goto_16
    iget-object v3, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v6, 0x1050566

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mConvertRatio:F

    mul-float/2addr v7, v8

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    if-nez v5, :cond_27

    iget-boolean v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-nez v7, :cond_27

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    goto :goto_17

    :cond_27
    iget-object v7, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v7, v2

    add-int/2addr v7, v3

    int-to-float v2, v7

    :goto_17
    cmpg-float v3, v6, v2

    if-gez v3, :cond_28

    goto :goto_18

    :cond_28
    move v6, v2

    :goto_18
    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v6, v2

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    const v3, 0x7f070c43

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    if-nez v2, :cond_29

    if-eqz v5, :cond_2b

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070c44

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_19

    :cond_29
    iget-object v0, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_19

    :cond_2a
    if-eqz v5, :cond_2b

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    :cond_2b
    :goto_19
    if-lez v4, :cond_2c

    const v0, 0x7f0a0b96

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v3, v4

    mul-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    return-object v1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createScreenZoomView: RemoteException e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d18

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFromAccessibility:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "top_level_accessibility"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "top_level_display"

    :goto_0
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContent:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "FROM_ACCESSIBILITY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFromAccessibility:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/display/SecFontTrialSettings;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/settings/display/SecFontTrialSettings;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v1, :cond_2

    iget-object p1, v1, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x18894

    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid: cause: Build.VERSION.SEM_PLATFORM_INT="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecFontTrialSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_2
    sget-object p1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onCreate: Density length="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length p0, p0

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {p1, p0, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_0

    const v0, 0x7f140ff2

    goto :goto_0

    :cond_0
    const v0, 0x7f1426dd

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mPreviewFontFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 4

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const p0, 0x7f0a0017

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "SecScreenZoomPreferenceFragment"

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDestroyView: layout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "onDestroyView: layout has been removed."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SecScreenZoomPreferenceFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v1, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    iget-object v3, v0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;->mFontPreviewBubbleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/display/FontPreviewBubbleListItem;->mMessageText:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "PreviewFontMessageList"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "mLastCommitTime"

    iget-wide v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->registerControlListeners()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public final registerControlListeners()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    new-instance v2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    new-instance v2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    sput-boolean v1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    return-void
.end method

.method public final setPreviewLayer(I)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v5, v4

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mViewStubInflated:[[Z

    if-ltz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    aget-object v10, v8, v3

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v10, v10, v3

    const/4 v11, 0x4

    if-ne v7, v10, :cond_3

    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->setVisibility$1(Landroid/view/View;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->setVisibility$1(Landroid/view/View;I)V

    :cond_4
    :goto_3
    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v10, v10, v3

    if-ne v7, v10, :cond_6

    aget-object v7, v8, v3

    aget-boolean v7, v7, p1

    if-nez v7, :cond_5

    check-cast v9, Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->setVisibility$1(Landroid/view/View;I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->setVisibility$1(Landroid/view/View;I)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iput p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setPreviewLayer: mCurrentIndex="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    const-string v0, "ScreenZoomEvent"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
