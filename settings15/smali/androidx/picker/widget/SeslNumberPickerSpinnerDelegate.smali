.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.super Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DIGIT_CHARACTERS:[C


# instance fields
.field public final ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public final SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field public final mActivatedAlpha:F

.field public final mAdjustScroller:Landroid/widget/Scroller;

.field public mAlpha:F

.field public mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

.field public mBottomSelectionDividerBottom:I

.field public final mColorInAnimator:Landroid/animation/ValueAnimator;

.field public final mColorOutAnimator:Landroid/animation/ValueAnimator;

.field public final mColorUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

.field public final mComputeMaxWidth:Z

.field public mCurVelocity:F

.field public mCurrentScrollOffset:I

.field public final mCustomScroller:Landroid/widget/Scroller;

.field public mCustomTalkbackFormatter:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

.field public mCustomTypefaceSet:Z

.field public mDecrementVirtualButtonPressed:Z

.field public final mDefaultTypeface:Landroid/graphics/Typeface;

.field public mDisplayedValues:[Ljava/lang/String;

.field public final mFadeInAnimator:Landroid/animation/ValueAnimator;

.field public final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field public mFlingScroller:Landroid/widget/Scroller;

.field public mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

.field public final mGravityScroller:Landroid/widget/OverScroller;

.field public final mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

.field public mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

.field public final mHeightRatio:F

.field public final mIdleAlpha:F

.field public mIgnoreMoveEvents:Z

.field public mIgnoreUpEvent:Z

.field public mIncrementVirtualButtonPressed:Z

.field public final mInitialAlpha:F

.field public mInitialScrollOffset:I

.field public final mInputText:Landroid/widget/EditText;

.field public mIsAmPm:Z

.field public mIsBoldTextEnabled:Z

.field public mIsEditTextMode:Z

.field public mIsEditTextModeEnabled:Z

.field public mIsHcfEnabled:Z

.field public mIsLongClicked:Z

.field public mIsStartingAnimation:Z

.field public mIsValueChanged:Z

.field public mLastDownEventY:F

.field public mLastDownOrMoveEventY:F

.field public mLastFocusedChildVirtualViewId:I

.field public mLastHoveredChildVirtualViewId:I

.field public final mLinearScroller:Landroid/widget/Scroller;

.field public final mMaxHeight:I

.field public mMaxValue:I

.field public mMaxWidth:I

.field public final mMaximumFlingVelocity:I

.field public final mMinHeight:I

.field public mMinValue:I

.field public final mMinWidth:I

.field public final mMinimumFlingVelocity:I

.field public mModifiedTxtHeight:I

.field public mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field public mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

.field public mPerformClickOnTap:Z

.field public mPickerContentDescription:Ljava/lang/String;

.field public final mPickerSoundFastIndex:I

.field public final mPickerSoundSlowIndex:I

.field public mPickerSubTypeface:Landroid/graphics/Typeface;

.field public mPickerTypeface:Landroid/graphics/Typeface;

.field public final mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

.field public mPreviousScrollerY:I

.field public mPreviousSpringY:F

.field public mReservedStartAnimation:Z

.field public mScrollState:I

.field public final mSelectionDividerHeight:I

.field public mSelectorElementHeight:I

.field public final mSelectorIndexToStringCache:Landroid/util/SparseArray;

.field public final mSelectorIndices:[I

.field public final mSelectorWheelPaint:Landroid/graphics/Paint;

.field public final mShortFlickThreshold:I

.field public final mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mSpringAnimationEndListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;

.field public final mSpringAnimationUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;

.field public mSpringFlingRunning:Z

.field public mTextColor:I

.field public final mTextColorIdle:I

.field public final mTextColorScrolling:I

.field public mTextSize:I

.field public mToast:Landroid/widget/Toast;

.field public final mToastText:Ljava/lang/String;

.field public mTopSelectionDividerTop:I

.field public final mTouchSlop:I

.field public mUnitValue:Ljava/lang/String;

.field public final mUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

.field public mValue:I

.field public mValueChangeOffset:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field public mWrapSelectorWheel:Z

.field public mWrapSelectorWheelPreferred:Z

.field public final selectedPickerColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method public constructor <init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "Reflector did not find field = "

    const-string v7, "SeslBaseReflector"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iput-object v2, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v8, 0x5

    new-array v8, v8, [I

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    const/high16 v8, -0x80000000

    iput v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput-boolean v5, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    iput v4, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    iput-boolean v5, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    iput-boolean v4, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    iput-boolean v4, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    iput-boolean v4, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    iput-boolean v4, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    iput-boolean v4, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const v11, 0x3ecccccd    # 0.4f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e2e147b    # 0.17f

    const v13, 0x3f547ae1    # 0.83f

    invoke-direct {v8, v9, v9, v13, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v11, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    const v8, 0x3dcccccd    # 0.1f

    iput v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v12, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    iput v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    const/16 v8, 0x6a4

    iput v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mShortFlickThreshold:I

    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-direct {v8, v1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-direct {v8, v1, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;

    invoke-direct {v8, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;

    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;

    invoke-direct {v8, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v8, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0710ff

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v13, 0x7f071100

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0710fe

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v9

    div-float/2addr v14, v15

    iput v14, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHeightRatio:F

    sget-object v14, Landroidx/picker/R$styleable;->NumberPicker:[I

    move-object/from16 v15, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual {v2, v15, v14, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    invoke-virtual {v10, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    const/4 v15, 0x3

    invoke-virtual {v10, v15, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    invoke-virtual {v10, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v14, v11, :cond_1

    if-eq v9, v11, :cond_1

    if-gt v14, v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq v13, v11, :cond_3

    iget v9, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v9, v11, :cond_3

    if-gt v13, v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v5, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    iget v9, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-ne v9, v11, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    iput-boolean v9, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    if-nez v9, :cond_5

    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    :cond_5
    new-instance v9, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-direct {v9, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v9, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const-string v9, "layout_inflater"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v13, 0x7f0d0ae1

    invoke-virtual {v9, v13, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v9, 0x7f0a0ac2

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLongClickable(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    new-instance v9, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;

    invoke-direct {v9, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    const-string v0, "sec-roboto-condensed-light"

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    const-string v0, "sec"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v9, 0x258

    invoke-static {v0, v9, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/reflect/content/res/SeslConfigurationReflector;->isDexEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "theme_font_clock"

    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_6
    move-object v0, v9

    :goto_3
    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_7
    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    :cond_8
    :goto_4
    invoke-static {}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    :cond_9
    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsHcfEnabled:Z

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    sget-object v14, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const v14, 0x7f0608cd

    invoke-virtual {v10, v14, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorScrolling:I

    iget-object v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    iget-object v13, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getEnableStateSet()[I

    move-result-object v13

    invoke-virtual {v10, v13, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v11, 0x7f0608ce

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->selectedPickerColor:I

    iget v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    iput v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    iget-object v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->selectedPickerColor:I

    invoke-direct {v0, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    new-instance v10, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;

    invoke-direct {v10, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    new-instance v10, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$3;

    invoke-direct {v10, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$3;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    new-array v10, v5, [Landroid/text/InputFilter;

    new-instance v11, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;

    invoke-direct {v11, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    aput-object v11, v10, v4

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v10, 0x2000006

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v10

    invoke-static {v0, v10}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    mul-int/2addr v2, v3

    iput v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v2, v10

    iput v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "bold_text"

    invoke-static {v2, v10, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    goto :goto_5

    :cond_a
    move v2, v4

    :goto_5
    iput-boolean v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsBoldTextEnabled:Z

    if-eqz v2, :cond_b

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_b
    new-instance v0, Landroid/widget/Scroller;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    iget-object v10, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v10, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v9, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e99999a    # 0.3f

    const/4 v13, 0x0

    const v14, 0x3ecccccd    # 0.4f

    invoke-direct {v10, v14, v13, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v0, v2, v10}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v2, v10}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v12, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;

    iget-object v10, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-virtual {v0, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    sget-object v0, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    if-ne v0, v2, :cond_d

    goto :goto_6

    :cond_d
    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_e
    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    invoke-static {}, Landroidx/reflect/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL()I

    sget-object v0, Landroidx/reflect/media/SeslAudioManagerReflector;->mClass:Ljava/lang/Class;

    const-string v2, "SOUND_TIME_PICKER_FAST"

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_7

    :catch_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    :goto_7
    const-string v10, " IllegalAccessException"

    const-string v11, " IllegalArgumentException"

    if-eqz v2, :cond_f

    :try_start_2
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    move-object v0, v9

    :goto_9
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_f

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_f
    move v0, v4

    :goto_a
    iput v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundFastIndex:I

    sget-object v0, Landroidx/reflect/media/SeslAudioManagerReflector;->mClass:Ljava/lang/Class;

    const-string v2, "SOUND_TIME_PICKER_SLOW"

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v0

    goto :goto_b

    :catch_4
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    :goto_b
    if-eqz v2, :cond_10

    :try_start_4
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    move-object v0, v9

    :goto_d
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_e

    :cond_10
    move v0, v4

    :goto_e
    iput v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundSlowIndex:I

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v4

    const-string v6, "com.samsung.android.media.SemSoundAssistantManager"

    const-string/jumbo v12, "setFastAudioOpenMode"

    invoke-static {v6, v12, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v12, v5, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v4

    invoke-static {v6, v12}, Landroidx/reflect/SeslBaseReflector;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    if-eqz v6, :cond_11

    :try_start_5
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_f

    :catch_7
    const-string v0, "SeslSemSoundAssistantManagerReflector"

    const-string v6, "Failed to instantiate class"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_f
    if-eqz v2, :cond_12

    if-eqz v9, :cond_12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    :try_start_6
    invoke-virtual {v2, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " InvocationTargetException"

    invoke-static {v2, v0, v9, v7, v6}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0, v11, v7, v6}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0, v10, v7, v6}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_12
    :goto_10
    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setDefaultFocusHighlightEnabled(Z)V

    const-string v0, ""

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    const v2, 0x7f142b2a

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/reflect/view/SeslViewReflector;->semSetDirectPenInputEnabled(Landroid/view/View;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    iget v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    new-array v6, v3, [F

    aput v0, v6, v4

    aput v2, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iget v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    new-array v3, v3, [F

    aput v0, v3, v4

    aput v2, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorScrolling:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorScrolling:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorUpdateListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static access$1200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0ad1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a095e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public static isCharacterNumberLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {v1, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final changeValueByOne(Z)V
    .locals 13

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v11, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    const/16 v12, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final ensureCachedScrollSelectorValue(I)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    aget-object p0, v2, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final ensureScrollWheelAdjusted(I)Z
    .locals 9

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-ge p1, v1, :cond_3

    if-lez v0, :cond_1

    :goto_0
    neg-int v1, v1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    move v7, v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v3, v1, 0x2

    if-le p1, v3, :cond_2

    if-lez v0, :cond_1

    goto :goto_0

    :goto_1
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/16 v8, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    const/4 p0, 0x1

    return p0

    :cond_4
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    return v2
.end method

.method public final formatNumber(I)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-char v1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method public final getSelectedPos(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    return p0
.end method

.method public final getWrappedSelectorIndex(I)I
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_0

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr p1, p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1

    :cond_0
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, v0, p1

    sub-int p0, v0, p0

    add-int/lit8 p0, p0, 0x1

    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0

    :cond_1
    return p1
.end method

.method public final initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x2

    add-int/2addr v3, v0

    iget-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_1
    aput v3, v1, v2

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final isEditTextModeNotAmPm()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v3, v1

    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    rem-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le p1, v3, :cond_2

    if-lez v4, :cond_1

    sub-int/2addr v4, v2

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    :cond_2
    :goto_0
    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(I)V

    return v0

    :cond_3
    return v2
.end method

.method public final onScrollStateChange(I)V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    return-void
.end method

.method public final playSoundAndHapticFeedback()V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurVelocity:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundFastIndex:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundSlowIndex:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const v1, 0xc388

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_1
    return-void
.end method

.method public final removeAllCallbacks()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    return-void
.end method

.method public final scrollBy(I)V
    .locals 9

    if-eqz p1, :cond_9

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v6, v0, p1

    iget v7, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v6, v7, :cond_1

    aget v6, v5, v3

    iget v8, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v6, v8, :cond_1

    sub-int p1, v7, v0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    iput-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v6, v0, p1

    iget v7, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v6, v7, :cond_2

    aget v6, v5, v3

    iget v8, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v6, v8, :cond_2

    sub-int p1, v7, v0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    array-length p1, v5

    sub-int/2addr p1, v4

    invoke-static {v5, v2, v5, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget p1, v5, v4

    sub-int/2addr p1, v4

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, v0, :cond_4

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    :cond_4
    aput p1, v5, v2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_5

    aget p1, v5, v3

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    iput-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    :cond_5
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_3

    aget p1, v5, v3

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt p1, v0, :cond_3

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_6
    :goto_1
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v0, p1, v0

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    neg-int v1, v1

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    array-length p1, v5

    sub-int/2addr p1, v4

    invoke-static {v5, v4, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v5

    sub-int/2addr p1, v3

    aget p1, v5, p1

    add-int/2addr p1, v4

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_7

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    :cond_7
    array-length v0, v5

    sub-int/2addr v0, v4

    aput p1, v5, v0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_8

    aget p1, v5, v3

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    iput-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    :cond_8
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_6

    aget p1, v5, v3

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt p1, v0, :cond_6

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public final setEditTextMode(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_1
    const/high16 p1, 0x40000

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/high16 p1, 0x20000

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    :cond_7
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    if-eqz p1, :cond_8

    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {p1, p0}, Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final setInputTextTypeface()V
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsHcfEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public final setValueInternal(IZ)V
    .locals 4

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    if-ne v0, p1, :cond_1

    invoke-static {}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    if-eqz p2, :cond_7

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_6

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt p1, p2, :cond_4

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr p1, v2

    aget-object p1, p2, p1

    :cond_4
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_6

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-eq p2, v2, :cond_5

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne p2, v2, :cond_6

    :cond_5
    const/4 p2, 0x2

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    if-eqz p1, :cond_7

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {p1, v1, v0, p2}, Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;->onValueChange(Landroidx/picker/widget/SeslNumberPicker;II)V

    :cond_7
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v1, v1, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_8
    return-void
.end method

.method public final showSoftInput()V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public final startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V
    .locals 2

    iput-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p2, Landroidx/picker/app/SeslTimePickerDialog$2;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    new-instance p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;-><init>(IILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startFadeAnimation(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorScrolling:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public final stopScrollAnimation()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    return-void
.end method

.method public final tryComputeMaxWidth()V
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_3

    :cond_4
    array-length v0, v0

    move v2, v1

    move v3, v2

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-int v2, v4

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    move v1, v3

    :goto_3
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroidx/reflect/graphics/SeslPaintReflector;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    :cond_7
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v0, v3, :cond_9

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v3, v0, :cond_8

    iput v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_4

    :cond_8
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    :goto_4
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_9
    return-void
.end method

.method public final updateInputTextView()Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-static {v0, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateWrapSelectorWheel()V
    .locals 2

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method
