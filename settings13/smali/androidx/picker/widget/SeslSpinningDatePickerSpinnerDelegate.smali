.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;
.super Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;
.source "SeslSpinningDatePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;
    }
.end annotation


# instance fields
.field private final ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field private mActivatedAlpha:F

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAlpha:F

.field private mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

.field private mChangeValueBy:I

.field private mColorInAnimator:Landroid/animation/ValueAnimator;

.field private mColorOutAnimator:Landroid/animation/ValueAnimator;

.field private mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mCustomScroller:Landroid/widget/Scroller;

.field private mCustomTypefaceSet:Z

.field private mDecrementVirtualButtonPressed:Z

.field private final mDefaultTypeface:Landroid/graphics/Typeface;

.field private mFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

.field private mGravityScroller:Landroid/widget/OverScroller;

.field private mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

.field private mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

.field private final mHcfUnfocusedTextSizeDiff:I

.field private final mHeightRatio:F

.field private mHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mIdleAlpha:F

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialAlpha:F

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsHcfEnabled:Z

.field private mIsLeapMonth:Z

.field private mIsLongClicked:Z

.field private mIsLongPressed:Z

.field private mIsLunar:Z

.field private mIsStartingAnimation:Z

.field private mIsValueChanged:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastFocusedChildVirtualViewId:I

.field private mLastHoveredChildVirtualViewId:I

.field private final mLegacyTypeface:Landroid/graphics/Typeface;

.field private final mLinearScroller:Landroid/widget/Scroller;

.field private mLongMonths:[Ljava/lang/String;

.field private mLongPressCount:I

.field private mLongPressUpdateInterval:J

.field private mLongPressed_FIRST_SCROLL:Z

.field private mLongPressed_SECOND_SCROLL:Z

.field private mLongPressed_THIRD_SCROLL:Z

.field private final mMaxHeight:I

.field private mMaxValue:Ljava/util/Calendar;

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:Ljava/util/Calendar;

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModifiedTxtHeight:I

.field private mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

.field private mOnValueChangeListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPerformClickOnTap:Z

.field private mPickerContentDescription:Ljava/lang/String;

.field private mPickerSoundIndex:I

.field private mPickerSubTypeface:Landroid/graphics/Typeface;

.field private mPickerTypeface:Landroid/graphics/Typeface;

.field private mPickerVibrateIndex:I

.field private final mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mPreviousSpringY:F

.field private mReservedStartAnimation:Z

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Calendar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[Ljava/util/Calendar;

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mShortMonths:[Ljava/lang/String;

.field private mSkipNumbers:Z

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mSpringAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mSpringAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private mSpringFlingRunning:Z

.field private mTextColor:I

.field private final mTextColorIdle:I

.field private final mTextColorScrolling:I

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValue:Ljava/util/Calendar;

.field private mValueChangeOffset:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 498
    invoke-direct/range {p0 .. p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;)V

    const-wide/16 v5, 0x12c

    .line 234
    iput-wide v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 239
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Calendar;

    .line 244
    iput-object v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    const/high16 v5, -0x80000000

    .line 264
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    const/4 v5, 0x1

    .line 339
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    const/4 v6, 0x0

    .line 349
    iput v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    .line 384
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    .line 436
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    .line 437
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    .line 438
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 449
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    .line 451
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 463
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    const/4 v7, 0x0

    .line 465
    iput-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 466
    iput-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    .line 468
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const v11, 0x3ecccccd    # 0.4f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 470
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v13, 0x3e2e147b    # 0.17f

    const v14, 0x3f547ae1    # 0.83f

    invoke-direct {v9, v13, v13, v14, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 473
    iput v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    const v13, 0x3dcccccd    # 0.1f

    .line 474
    iput v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    .line 475
    iput v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    .line 476
    iput v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    .line 1869
    new-instance v13, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-direct {v13, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1877
    new-instance v13, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$3;

    invoke-direct {v13, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$3;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1885
    new-instance v13, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;

    invoke-direct {v13, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 1903
    new-instance v13, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;

    invoke-direct {v13, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 500
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 501
    sget v14, Landroidx/picker/R$dimen;->sesl_number_picker_spinner_height:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 502
    sget v15, Landroidx/picker/R$dimen;->sesl_number_picker_spinner_width:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 503
    sget v10, Landroidx/picker/R$dimen;->sesl_number_picker_spinner_edit_text_height:I

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v14

    div-float/2addr v10, v11

    .line 505
    iput v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHeightRatio:F

    .line 508
    sget-object v10, Landroidx/picker/R$styleable;->NumberPicker:[I

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 511
    sget v11, Landroidx/picker/R$styleable;->NumberPicker_internalMinHeight:I

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinHeight:I

    .line 513
    sget v7, Landroidx/picker/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {v10, v7, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxHeight:I

    .line 515
    sget v14, Landroidx/picker/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {v10, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinWidth:I

    .line 517
    sget v15, Landroidx/picker/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {v10, v15, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    .line 520
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v0, v10, v15}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    .line 523
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v0, v10, v15}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    .line 524
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v0, v10, v15}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 526
    sget-object v10, Landroidx/picker/R$styleable;->DatePicker:[I

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 528
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    sget v4, Landroidx/picker/R$styleable;->DatePicker_android_startYear:I

    const/16 v10, 0x76e

    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    .line 529
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    sget v4, Landroidx/picker/R$styleable;->DatePicker_android_endYear:I

    const/16 v10, 0x834

    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v4, 0xb

    const/16 v10, 0x1f

    invoke-virtual {v3, v2, v4, v10}, Ljava/util/Calendar;->set(III)V

    if-eq v11, v12, :cond_1

    if-eq v7, v12, :cond_1

    if-gt v11, v7, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq v14, v12, :cond_3

    .line 535
    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    if-eq v2, v12, :cond_3

    if-gt v14, v2, :cond_2

    goto :goto_1

    .line 537
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_3
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 540
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectionDividerHeight:I

    .line 544
    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    if-ne v2, v12, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    iput-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mComputeMaxWidth:Z

    .line 546
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v7, Landroidx/appcompat/R$attr;->colorPrimaryDark:I

    invoke-virtual {v4, v7, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 549
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const/high16 v7, 0x33000000

    const v10, 0xffffff

    if-eqz v4, :cond_5

    const/4 v11, 0x0

    .line 550
    invoke-static {v13, v4, v11}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    goto :goto_3

    .line 553
    :cond_5
    iget v2, v2, Landroid/util/TypedValue;->data:I

    :goto_3
    and-int/2addr v2, v10

    or-int/2addr v2, v7

    .line 555
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 557
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    const v4, 0x3e4ccccd    # 0.2f

    if-nez v2, :cond_6

    .line 558
    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    .line 560
    :cond_6
    new-instance v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-direct {v2, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    .line 567
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 569
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 571
    sget v7, Landroidx/picker/R$layout;->sesl_spinning_date_picker_spinner:I

    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v7, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 574
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    sget v7, Landroidx/picker/R$id;->datepicker_input:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    .line 575
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 576
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    const-string v10, "sec-roboto-condensed-light"

    .line 577
    invoke-static {v10, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLegacyTypeface:Landroid/graphics/Typeface;

    const-string v11, "sec-roboto-light"

    .line 578
    invoke-static {v11, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 579
    invoke-virtual {v7, v11}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 580
    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 581
    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_7
    const-string v10, "sans-serif-thin"

    .line 583
    invoke-static {v10, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 586
    :cond_8
    :goto_4
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v10, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 588
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-static {v10}, Landroidx/reflect/content/res/SeslConfigurationReflector;->isDexEnabled(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 590
    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "theme_font_clock"

    invoke-static {v4, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 592
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 593
    invoke-static {v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 594
    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    goto :goto_5

    .line 597
    :cond_9
    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    .line 600
    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 601
    iput-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 602
    invoke-static {v7, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 604
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isHighContrastFontEnabled()Z

    move-result v4

    iput-boolean v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsHcfEnabled:Z

    .line 605
    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    .line 606
    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 607
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 606
    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfUnfocusedTextSizeDiff:I

    .line 608
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    .line 609
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 610
    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->getEnableStateSet()[I

    move-result-object v4

    .line 612
    invoke-virtual {v3, v4, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColorIdle:I

    .line 616
    sget v4, Landroidx/picker/R$color;->sesl_number_picker_text_color_scroll:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v13, v4, v7}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColorScrolling:I

    .line 617
    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    .line 620
    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTouchSlop:I

    .line 622
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    const/4 v10, 0x2

    mul-int/2addr v7, v10

    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinimumFlingVelocity:I

    .line 623
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaximumFlingVelocity:I

    .line 625
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    .line 628
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 629
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 630
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 631
    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 632
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 633
    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 635
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v1, v7

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    .line 638
    new-instance v1, Landroid/widget/Scroller;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v8, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    .line 639
    new-instance v1, Landroid/widget/Scroller;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    .line 640
    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 641
    new-instance v1, Landroid/widget/Scroller;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e99999a    # 0.3f

    const/4 v12, 0x0

    const v13, 0x3ecccccd    # 0.4f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v8, v13, v12, v11, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v1, v7, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 643
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v7, v8}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    .line 645
    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 646
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 647
    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 648
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 649
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 650
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 651
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 652
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v7, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 654
    invoke-static {}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->getDateFormatter()Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setFormatter(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;)V

    .line 656
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 659
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 660
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 663
    :cond_c
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 665
    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;)V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    const/16 v1, 0x20

    .line 666
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerVibrateIndex:I

    .line 667
    invoke-static {}, Landroidx/reflect/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL()I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSoundIndex:I

    .line 670
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 671
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/high16 v7, 0x20000

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 673
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setDefaultFocusHighlightEnabled(Z)V

    const-string v1, ""

    .line 675
    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 679
    invoke-static {v2, v6}, Landroidx/reflect/view/SeslViewReflector;->semSetDirectPenInputEnabled(Landroid/view/View;Z)V

    .line 682
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-array v1, v10, [F

    .line 684
    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    aput v2, v1, v6

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 685
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 686
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0xc8

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 687
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v11, 0x64

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 688
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v10, [F

    .line 690
    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    aput v2, v1, v6

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 691
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 692
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 693
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 695
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v5

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    .line 696
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 697
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 698
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 700
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    .line 701
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 702
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 704
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 706
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 707
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongMonths:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    return p0
.end method

.method static synthetic access$1000(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroidx/picker/util/SeslAnimationListener;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    return-object p0
.end method

.method static synthetic access$1302(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;F)F
    .locals 0

    .line 95
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    return p1
.end method

.method static synthetic access$1402(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)I
    .locals 0

    .line 95
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    return p1
.end method

.method static synthetic access$1500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)F
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousSpringY:F

    return p0
.end method

.method static synthetic access$1502(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;F)F
    .locals 0

    .line 95
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousSpringY:F

    return p1
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    return p0
.end method

.method static synthetic access$1602(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    return p1
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/OverScroller;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$2002(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$202(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    return p1
.end method

.method static synthetic access$2080(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$2200(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$2202(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2280(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2300(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$2400(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)J
    .locals 2

    .line 95
    iget-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    return p0
.end method

.method static synthetic access$2700(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    return p0
.end method

.method static synthetic access$2800(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I
    .locals 0

    .line 95
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$2900(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p0
.end method

.method static synthetic access$3000(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p1
.end method

.method static synthetic access$3100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$3200(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getWrappedSelectorIndex(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$3400(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$3500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateForLunarForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0

    .line 95
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$802(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)I
    .locals 0

    .line 95
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 9

    .line 2162
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2163
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 2165
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    const/4 v1, 0x1

    .line 2166
    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    .line 2168
    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v2, :cond_1

    .line 2169
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2170
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    goto :goto_0

    .line 2171
    :cond_1
    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    .line 2172
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2173
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2174
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 2175
    iput v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 2177
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2179
    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2181
    :cond_4
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_5

    .line 2182
    iput v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    :cond_5
    :goto_0
    const/16 v0, 0x1f4

    .line 2186
    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v2, :cond_6

    iget-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSkipNumbers:Z

    if-eqz v3, :cond_6

    const/16 v0, 0xc8

    const-wide/16 v1, 0x258

    .line 2188
    iput-wide v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    const/16 v0, 0x64

    .line 2191
    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v1, 0x12c

    .line 2192
    iput-wide v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    :cond_7
    :goto_1
    move v8, v0

    .line 2195
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    if-eqz p1, :cond_8

    .line 2197
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int p1, p1

    mul-int v7, p1, v0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    .line 2199
    :cond_8
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int v7, p1, v0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2201
    :goto_2
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    const/4 p0, 0x1

    .line 3162
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 3163
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 3164
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private decrementSelectorIndices([Ljava/util/Calendar;)V
    .locals 4

    .line 2328
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2329
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v3, -0x1

    .line 2330
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 2331
    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_0

    .line 2332
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 2334
    :cond_0
    aput-object v0, p1, v2

    .line 2335
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V
    .locals 2

    .line 2343
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    .line 2344
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 2348
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    .line 2351
    :cond_1
    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateForLunar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 2353
    :goto_1
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 1

    const/4 v0, 0x0

    .line 2545
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    move-result p0

    return p0
.end method

.method private ensureScrollWheelAdjusted(I)Z
    .locals 8

    .line 2550
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    .line 2553
    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 2555
    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2556
    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    if-ge p1, v2, :cond_1

    if-lez v0, :cond_2

    goto :goto_0

    .line 2558
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le p1, v3, :cond_3

    if-lez v0, :cond_2

    :goto_0
    neg-int v2, v2

    :cond_2
    add-int/2addr v0, v2

    :cond_3
    move v6, v0

    .line 2561
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x12c

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2562
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 2563
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    const/4 p0, 0x1

    return p0

    .line 2566
    :cond_4
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    return v1
.end method

.method private fling(I)V
    .locals 11

    .line 2259
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMinValue()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void

    .line 2264
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMaxValue()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2268
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2269
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    mul-float/2addr v0, v2

    .line 2270
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 2272
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousSpringY:F

    .line 2273
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2274
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 2275
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 2276
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v2

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v3

    if-lez p1, :cond_2

    add-int/2addr v2, v3

    .line 2278
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_2
    neg-int p1, v2

    add-int/2addr p1, v3

    .line 2279
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    .line 2281
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2282
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 2283
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 2284
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 2424
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    if-nez v0, :cond_0

    .line 2425
    invoke-static {p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateWithLocale(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2427
    :cond_0
    instance-of v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-eqz v1, :cond_1

    .line 2428
    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->format(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2429
    :cond_1
    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private formatDateForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 2433
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    if-nez v0, :cond_0

    .line 2434
    invoke-static {p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateWithLocale(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2436
    :cond_0
    instance-of v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-eqz v1, :cond_1

    .line 2437
    check-cast v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->formatForAccessibility(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2438
    :cond_1
    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private formatDateForLunar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    .line 2357
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2358
    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    invoke-direct {v1}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;-><init>()V

    .line 2359
    invoke-virtual {p0, p1, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    .line 2361
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    if-nez p1, :cond_0

    .line 2362
    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateWithLocale(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2364
    :cond_0
    instance-of v2, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-eqz v2, :cond_1

    .line 2365
    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->format(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2366
    :cond_1
    invoke-interface {p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 2369
    :goto_0
    iget v2, v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    invoke-static {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getDayWithLocale(I)Ljava/lang/String;

    move-result-object v2

    .line 2370
    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDayWithLocale(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 2371
    iget v1, v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMonthWithLocale(I)Ljava/lang/String;

    move-result-object p0

    .line 2372
    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatMonthWithLocale(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "vi"

    if-ne p1, v4, :cond_2

    .line 2378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2379
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2381
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const/4 v4, -0x1

    if-eq p1, v4, :cond_3

    .line 2385
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2387
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_4

    .line 2389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2391
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatDateForLunarForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    .line 2395
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2396
    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    invoke-direct {v1}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;-><init>()V

    .line 2397
    invoke-virtual {p0, p1, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    .line 2399
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    if-nez p1, :cond_0

    .line 2400
    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateWithLocaleForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2402
    :cond_0
    instance-of v2, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-eqz v2, :cond_1

    .line 2403
    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->formatForAccessibility(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2404
    :cond_1
    invoke-interface {p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 2406
    :goto_0
    iget v2, v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    invoke-static {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getDayWithLocale(I)Ljava/lang/String;

    move-result-object v2

    .line 2407
    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDayWithLocale(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 2408
    iget v1, v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMonthWithLocaleForAccessibility(I)Ljava/lang/String;

    move-result-object p0

    .line 2409
    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatMonthWithLocaleForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 2410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    .line 2414
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_3

    .line 2418
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDateWithLocale(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 3168
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE, MMM d"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDateWithLocaleForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 3172
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEEE, MMMM d"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDayWithLocale(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 3176
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "d"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatMonthWithLocale(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 3185
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatMonthWithLocaleForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 3189
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 3201
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    .line 3273
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 3275
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 3276
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p1, 0xb

    const/16 p2, 0xc

    .line 3278
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 3279
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 3280
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 3281
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method private static getDayWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 3180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 1748
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1751
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private getMonthWithLocale(I)Ljava/lang/String;
    .locals 0

    .line 3193
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getMonthWithLocaleForAccessibility(I)Ljava/lang/String;
    .locals 0

    .line 3197
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongMonths:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getWrappedSelectorIndex(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 7

    .line 2292
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    const/4 v1, 0x5

    if-lez v0, :cond_0

    .line 2293
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2294
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2295
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int p1, v3

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 2296
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int p0, v2

    add-int/lit8 p0, p0, 0x1

    rem-int/2addr p1, p0

    .line 2294
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-object v0

    .line 2298
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_1

    .line 2299
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2300
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 2301
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int p1, v3

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 2302
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int p0, v2

    add-int/lit8 p0, p0, 0x1

    rem-int/2addr p1, p0

    neg-int p0, p1

    .line 2300
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private incrementSelectorIndices([Ljava/util/Calendar;)V
    .locals 3

    .line 2313
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2314
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v2, 0x5

    .line 2315
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 2316
    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2317
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-direct {p0, v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 2319
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aput-object v0, p1, v2

    .line 2320
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 3

    .line 2205
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_1

    .line 2206
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2207
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2209
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    .line 2211
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_2

    .line 2212
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2215
    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    mul-int/lit8 v0, v0, 0x3

    .line 2216
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2217
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2218
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    .line 2219
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    if-le v0, v1, :cond_3

    .line 2220
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :cond_3
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    .line 2221
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2222
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2224
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 2225
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBaseline()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2226
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;->setEditTextPosition(I)V

    .line 2227
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v0, :cond_4

    .line 2228
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    .line 2229
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    :cond_4
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 6

    .line 2117
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2118
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    .line 2119
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    .line 2120
    :goto_0
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2121
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    const/4 v4, 0x5

    add-int/lit8 v5, v2, -0x2

    .line 2122
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 2123
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 2124
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getWrappedSelectorIndex(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 2126
    :cond_0
    aput-object v3, v0, v2

    .line 2127
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isCharacterNumberLanguage()Z
    .locals 1

    .line 3205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 3206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "my"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isHighContrastFontEnabled()Z
    .locals 0

    .line 3286
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 2080
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 2081
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 2090
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2088
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 2086
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 778
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 779
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 782
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 786
    :cond_0
    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v3, v1

    .line 787
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 789
    rem-int/2addr v4, p1

    .line 790
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v5, v3, 0x2

    if-le p1, v5, :cond_2

    if-lez v4, :cond_1

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_1
    add-int/2addr v4, v3

    :cond_2
    :goto_0
    add-int/2addr v1, v4

    .line 798
    invoke-virtual {p0, v2, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(II)V

    return v0

    :cond_3
    return v2
.end method

.method private notifyChange(Ljava/util/Calendar;)V
    .locals 9

    .line 2457
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_2

    .line 2458
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getWrappedSelectorIndex(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 2460
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 2461
    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateForLunarForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    .line 2463
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2465
    :cond_2
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;

    if-eqz v2, :cond_4

    .line 2466
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    if-eqz v0, :cond_3

    .line 2467
    new-instance v8, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    invoke-direct {v8}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;-><init>()V

    .line 2468
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v8}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    move-result-object v6

    .line 2469
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;

    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    move-result-object v5

    iget-boolean v7, v8, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    invoke-interface/range {v3 .. v8}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;->onValueChange(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Ljava/util/Calendar;Ljava/util/Calendar;ZLandroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)V

    goto :goto_1

    .line 2471
    :cond_3
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;->onValueChange(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Ljava/util/Calendar;Ljava/util/Calendar;ZLandroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 2246
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2249
    :cond_0
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 2237
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2238
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    .line 1248
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSoundIndex:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1250
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerVibrateIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    .line 1252
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_0
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2

    .line 2482
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2483
    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2485
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    .line 2487
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2488
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2489
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->access$1900(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2490
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 2

    .line 2515
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2516
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2517
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2519
    :cond_0
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2520
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2521
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    .line 2522
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    .line 2523
    iput-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2524
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2525
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2527
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 2

    .line 2497
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2498
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2499
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2501
    :cond_0
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2502
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2503
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    .line 2504
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    .line 2505
    iput-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2506
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2507
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 2106
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 2107
    invoke-static {p0, p3, p1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setInputTextTypeface()V
    .locals 1

    .line 1727
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsHcfEnabled:Z

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1730
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private setValueInternal(Ljava/util/Calendar;Z)V
    .locals 2

    .line 2139
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 2140
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getWrappedSelectorIndex(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_2

    .line 2142
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/util/Calendar;

    .line 2143
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Calendar;

    .line 2145
    :goto_2
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 2146
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    if-eqz p2, :cond_3

    .line 2148
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->notifyChange(Ljava/util/Calendar;)V

    .line 2150
    :cond_3
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2151
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private startFadeAnimation(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1914
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1915
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1916
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1917
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1919
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    aput v3, v2, v0

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1920
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [I

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    aput v2, v1, v0

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColorScrolling:I

    aput v0, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1921
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1922
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1923
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1924
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method private stopFlingAnimation()V
    .locals 1

    .line 1862
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1863
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1864
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1865
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 1866
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    .line 1850
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1851
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1852
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1853
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 1854
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 1855
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1856
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1858
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 9

    .line 1495
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    const/16 v4, 0x9

    if-gt v2, v4, :cond_2

    .line 1501
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v3

    if-lez v5, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1510
    new-instance v3, Landroid/icu/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    .line 1512
    array-length v4, v3

    move v5, v0

    move v6, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v7, v3, v5

    .line 1513
    iget-object v8, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    cmpl-float v8, v7, v6

    if-lez v8, :cond_3

    move v6, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1520
    :cond_4
    new-instance v3, Landroid/icu/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    .line 1522
    array-length v4, v3

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 1523
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v7, v5, v1

    if-lez v7, :cond_5

    move v1, v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1529
    :cond_6
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    .line 1530
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const-string v5, ","

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v6

    add-float/2addr v2, v1

    add-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v0, v2

    .line 1535
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1536
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isHighContrastFontEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1537
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroidx/reflect/graphics/SeslPaintReflector;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result v1

    div-float/2addr v1, v3

    float-to-double v1, v1

    .line 1538
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 1541
    :cond_7
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    if-eq v1, v0, :cond_9

    .line 1542
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinWidth:I

    if-le v0, v1, :cond_8

    .line 1543
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_3

    .line 1545
    :cond_8
    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    .line 1547
    :goto_3
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_9
    return-void
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2

    .line 1222
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1227
    :cond_0
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1229
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    const/16 v1, 0x80

    .line 1232
    invoke-virtual {p0, p1, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    const/16 p1, 0x100

    .line 1233
    invoke-virtual {p0, v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 5

    .line 1595
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 1596
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1595
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1597
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1598
    :goto_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq v0, v2, :cond_2

    .line 1599
    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    .line 1600
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1601
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1271
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 1274
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 1275
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1276
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1277
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1281
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1282
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1283
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_2

    .line 1284
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    :cond_2
    const/4 v2, 0x0

    .line 1286
    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(II)V

    .line 1287
    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1288
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1289
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1291
    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 0

    .line 1367
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .locals 0

    .line 1356
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    return p0
.end method

.method public computeVerticalScrollRange()I
    .locals 5

    .line 1361
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 1362
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1361
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public convertLunarToSolar(Ljava/util/Calendar;III)Ljava/util/Calendar;
    .locals 6

    .line 3239
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 3240
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    iget-boolean v5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLeapMonth:Z

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertLunarToSolar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    .line 3243
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p2, p3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p2

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    .line 3244
    invoke-static {p3, p4}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p3

    iget-object p4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    .line 3245
    invoke-static {p4, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p0

    .line 3243
    invoke-virtual {p1, p2, p3, p0}, Ljava/util/Calendar;->set(III)V

    return-object p1
.end method

.method public convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;
    .locals 6

    .line 3251
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3252
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    const/4 v3, 0x1

    .line 3253
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 3252
    invoke-static {v1, v2, v3, v4, p1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertSolarToLunar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;III)V

    .line 3254
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    .line 3255
    invoke-static {v1, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    .line 3256
    invoke-static {v2, v3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v2

    .line 3254
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    if-eqz p2, :cond_0

    .line 3258
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    .line 3259
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    .line 3260
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    .line 3261
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->isLeapMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    :cond_0
    return-object v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1189
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1192
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    .line 1194
    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-gt v2, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 1199
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x7

    const/high16 v4, -0x80000000

    if-eq p1, v2, :cond_4

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    return v1

    .line 1207
    :cond_2
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v4, :cond_3

    .line 1208
    invoke-direct {p0, v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->updateHoveredVirtualView(I)V

    return v3

    :cond_3
    return v1

    .line 1203
    :cond_4
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->updateHoveredVirtualView(I)V

    if-eq v0, v4, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1066
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1067
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x3

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v2, :cond_d

    const/16 v6, 0xa0

    if-eq p1, v6, :cond_d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-nez v0, :cond_13

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1108
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1110
    invoke-virtual {p0, v2}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    return v5

    .line 1115
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1117
    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_3
    return v5

    :pswitch_1
    if-nez v0, :cond_b

    const/16 v0, 0x14

    if-ne p1, v0, :cond_7

    .line 1128
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_4

    goto/16 :goto_0

    .line 1134
    :cond_4
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMaxValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    .line 1137
    :cond_5
    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1138
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    .line 1130
    :cond_6
    iput v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1131
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    :cond_7
    const/16 v0, 0x13

    if-ne p1, v0, :cond_13

    .line 1145
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq p1, v4, :cond_9

    if-eq p1, v1, :cond_8

    goto/16 :goto_0

    .line 1156
    :cond_8
    iput v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1157
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    .line 1149
    :cond_9
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMinValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v3

    .line 1152
    :cond_a
    iput v5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1153
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    :cond_b
    if-ne v0, v5, :cond_13

    .line 1163
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1164
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_c

    .line 1166
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_c
    return v5

    :cond_d
    :pswitch_2
    if-nez v0, :cond_13

    .line 1073
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne p1, v4, :cond_e

    .line 1074
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->performClick()V

    .line 1075
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1076
    :cond_e
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1077
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v0, 0x5

    if-eq p1, v5, :cond_11

    if-eq p1, v1, :cond_f

    goto :goto_0

    .line 1079
    :cond_f
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1080
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1081
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMaxValue()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v1, -0x1

    .line 1082
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1083
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1084
    iput v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1086
    :cond_10
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_0

    .line 1089
    :cond_11
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1090
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1091
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMinValue()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 1092
    invoke-virtual {p1, v0, v5}, Ljava/util/Calendar;->add(II)V

    .line 1093
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1094
    iput v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1096
    :cond_12
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    :cond_13
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 2048
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 2049
    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2051
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method public getMaxValue()Ljava/util/Calendar;
    .locals 0

    .line 1667
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMinValue()Ljava/util/Calendar;
    .locals 0

    .line 1637
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    return-object p0
.end method

.method public getOnSpinnerDateClickListener()Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;
    .locals 0

    .line 1407
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    return-object p0
.end method

.method public getValue()Ljava/util/Calendar;
    .locals 0

    .line 1627
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    return-object p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1561
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1943
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1944
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1016
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz p1, :cond_0

    return-void

    .line 1019
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1020
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1021
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1022
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 1023
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    .line 1024
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    return-void

    .line 1027
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1028
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    .line 1029
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1930
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1931
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 1932
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 1933
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    .line 1935
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1936
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1950
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    .line 1951
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    .line 1952
    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    sub-int v3, v2, v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 1955
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1957
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-nez v9, :cond_3

    .line 1958
    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    goto :goto_0

    .line 1965
    :cond_0
    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1966
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v7, v8, v9, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1968
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1971
    :cond_1
    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1972
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1973
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1960
    :cond_2
    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1961
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v7, v8, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1962
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1979
    :cond_3
    :goto_0
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    array-length v9, v7

    move v10, v8

    :goto_1
    if-ge v10, v9, :cond_7

    aget-object v11, v7, v10

    .line 1980
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1986
    iget v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    .line 1987
    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    cmpg-float v14, v12, v13

    if-gez v14, :cond_4

    move v12, v13

    .line 1990
    :cond_4
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v14

    sub-float/2addr v13, v14

    div-float/2addr v13, v5

    add-float/2addr v13, v6

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v14

    sub-float/2addr v13, v14

    float-to-int v13, v13

    .line 1991
    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v8, v14, v15

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    const/high16 v16, 0x437f0000    # 255.0f

    if-ltz v8, :cond_6

    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    add-int/2addr v15, v8

    int-to-float v15, v15

    cmpg-float v15, v6, v15

    if-gtz v15, :cond_6

    add-int/2addr v14, v8

    int-to-float v8, v14

    div-float/2addr v8, v5

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_5

    .line 1994
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1995
    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v8, v2, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1996
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1997
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v8, v13

    .line 1998
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1999
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2000
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2001
    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14, v2, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2002
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2003
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    mul-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2004
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2005
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v14, 0x0

    goto :goto_2

    .line 2007
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2008
    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v8, v2, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2009
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2010
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v8, v13

    .line 2011
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2012
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2013
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2014
    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v13, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2015
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    iget v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    mul-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2016
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2017
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2018
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 2021
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2022
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    iget v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    mul-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2023
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v8, v13

    .line 2024
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2025
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2027
    :goto_2
    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    add-int/lit8 v10, v10, 0x1

    move v8, v14

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 1035
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1036
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_0

    .line 1038
    iget p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x80

    invoke-virtual {p1, p3, v0, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    const/4 p1, -0x1

    .line 1042
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/high16 p1, -0x80000000

    .line 1043
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_0

    .line 1045
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string p3, "input_method"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    .line 1047
    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    const/4 p1, 0x1

    .line 1049
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1050
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getMinValue()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 1051
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1053
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1054
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_4

    .line 1056
    iget p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x40

    invoke-virtual {p1, p3, v0, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1061
    :cond_4
    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 997
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/16 v0, 0x9

    .line 1002
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_2

    .line 1004
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_1

    move v1, v0

    .line 1006
    :cond_1
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1007
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .line 2033
    const-class v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2034
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2035
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    .line 2036
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2035
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2037
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 2038
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2037
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 831
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 834
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_a

    .line 836
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    .line 838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventTime:J

    .line 839
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 840
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 841
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    .line 844
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gez v0, :cond_1

    .line 845
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 846
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_2

    .line 847
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 850
    :cond_1
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 851
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 852
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_2

    .line 853
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    .line 858
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 859
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 860
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 861
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 862
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v2, :cond_3

    .line 863
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 864
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 866
    :cond_3
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_1

    .line 867
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 868
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 869
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 870
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 871
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 872
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v2, :cond_5

    .line 873
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 874
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 876
    :cond_5
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_1

    .line 877
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    .line 878
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 879
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 880
    :cond_7
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 882
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v4, p1

    .line 881
    invoke-direct {p0, v1, v4, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 883
    :cond_8
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 885
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 884
    invoke-direct {p0, v3, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 887
    :cond_9
    iput-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    :goto_1
    return v3

    :cond_a
    :goto_2
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 721
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 722
    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 725
    iget-object p4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 726
    iget-object p5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    int-to-float v0, p3

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 727
    iput p5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    sub-int/2addr p2, p4

    .line 728
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 729
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 732
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 736
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheel()V

    .line 739
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    if-le p1, p2, :cond_0

    .line 740
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    mul-int/lit8 p1, p1, 0x2

    .line 741
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    goto :goto_0

    .line 743
    :cond_0
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    .line 744
    iput p5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 752
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v0

    .line 753
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    .line 754
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->superOnMeasure(II)V

    .line 757
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinWidth:I

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    .line 758
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 757
    invoke-direct {p0, v0, v1, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 759
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinHeight:I

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    .line 760
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 759
    invoke-direct {p0, v0, v1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 761
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setMeasuredDimensionWrapper(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2043
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->access$1800(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 896
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 899
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 900
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 902
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_4

    .line 975
    :cond_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 976
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 977
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_4

    .line 906
    :cond_3
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 909
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 910
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-eq v0, v3, :cond_5

    .line 911
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 912
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTouchSlop:I

    if-le v0, v2, :cond_6

    .line 913
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    .line 914
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 915
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    .line 918
    :cond_5
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 919
    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(II)V

    .line 920
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 922
    :cond_6
    :goto_0
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto/16 :goto_4

    .line 925
    :cond_7
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeChangeCurrentByOneFromLongPress()V

    .line 926
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 927
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 928
    iget v5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 929
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v4

    .line 931
    iget v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 932
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v6, v7, :cond_9

    .line 933
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTouchSlop:I

    if-gt v5, p1, :cond_8

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz p1, :cond_8

    .line 934
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 935
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->performClick()V

    .line 936
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 938
    :cond_8
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->fling(I)V

    .line 939
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 942
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long/2addr v6, v8

    .line 943
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTouchSlop:I

    if-gt v5, p1, :cond_d

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v8, p1

    cmp-long p1, v6, v8

    if-gez p1, :cond_d

    .line 944
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz p1, :cond_a

    .line 945
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 946
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->performClick()V

    goto :goto_2

    .line 948
    :cond_a
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v4, p1, :cond_b

    .line 949
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 950
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 952
    :cond_b
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v4, p1, :cond_c

    .line 953
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 954
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 957
    :cond_c
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    .line 959
    :goto_1
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_2

    .line 962
    :cond_d
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    if-eqz p1, :cond_e

    .line 963
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    .line 965
    :cond_e
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    .line 966
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 968
    :goto_2
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    .line 969
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 971
    :goto_3
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 972
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_4
    return v3

    :cond_f
    :goto_5
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 806
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_4

    .line 807
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 808
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 810
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    .line 811
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 813
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 814
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 816
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 817
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 p1, 0x0

    .line 818
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 820
    :cond_3
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 823
    :cond_4
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isHighContrastFontEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsHcfEnabled:Z

    .line 824
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 825
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 826
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 5

    .line 1467
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1468
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    if-eqz v0, :cond_2

    .line 1471
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1472
    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    invoke-direct {v1}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;-><init>()V

    .line 1473
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1476
    :goto_0
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    iget-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    :goto_1
    invoke-interface {v2, v1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;->onSpinnerDateClicked(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)V

    :cond_2
    return-void
.end method

.method public performLongClick()V
    .locals 1

    const/4 v0, 0x1

    .line 1487
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1488
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    return-void
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1305
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    if-eqz p2, :cond_9

    .line 1306
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 1309
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v0, v2, :cond_1

    aget-object v0, p1, v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    .line 1310
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1311
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopFlingAnimation()V

    .line 1312
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr p2, v0

    .line 1314
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v0, v2, :cond_2

    aget-object v0, p1, v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    .line 1315
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1316
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopFlingAnimation()V

    .line 1317
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr p2, v0

    .line 1319
    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1320
    :cond_3
    :goto_0
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_6

    .line 1321
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1322
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->decrementSelectorIndices([Ljava/util/Calendar;)V

    .line 1323
    iget-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p2, :cond_5

    .line 1324
    aget-object p2, p1, v1

    invoke-direct {p0, p2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setValueInternal(Ljava/util/Calendar;Z)V

    .line 1325
    iput-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    .line 1326
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    if-lez p2, :cond_4

    add-int/lit8 p2, p2, -0x1

    .line 1327
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    goto :goto_1

    .line 1329
    :cond_4
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    .line 1332
    :cond_5
    :goto_1
    iget-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget-object p2, p1, v1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p2

    if-gtz p2, :cond_3

    .line 1333
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1336
    :cond_6
    :goto_2
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    neg-int v2, v2

    if-gt v0, v2, :cond_9

    .line 1337
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1338
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->incrementSelectorIndices([Ljava/util/Calendar;)V

    .line 1339
    iget-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p2, :cond_8

    .line 1340
    aget-object p2, p1, v1

    invoke-direct {p0, p2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setValueInternal(Ljava/util/Calendar;Z)V

    .line 1341
    iput-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    .line 1342
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    if-lez p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    .line 1343
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    goto :goto_3

    .line 1345
    :cond_7
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    .line 1348
    :cond_8
    :goto_3
    iget-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_6

    aget-object p2, p1, v1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1349
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1297
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-eqz p1, :cond_0

    .line 1298
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    const/4 p1, 0x0

    .line 1299
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method public setFormatter(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;)V
    .locals 1

    .line 1422
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1425
    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;

    .line 1426
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setLunar(ZZ)V
    .locals 0

    .line 2056
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLunar:Z

    .line 2057
    iput-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLeapMonth:Z

    if-eqz p1, :cond_0

    .line 2059
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 2060
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarUtils;->getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 2061
    invoke-static {p1}, Landroidx/reflect/lunarcalendar/SeslFeatureReflector;->getSolarLunarConverter(Ldalvik/system/PathClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2064
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 2065
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSolarLunarConverter:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxValue(Ljava/util/Calendar;)V
    .locals 1

    .line 1677
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1683
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 1684
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-gez p1, :cond_1

    .line 1685
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 1687
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->updateWrapSelectorWheel()V

    .line 1688
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1689
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1690
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setMinValue(Ljava/util/Calendar;)V
    .locals 1

    .line 1647
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1650
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 1651
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-lez p1, :cond_1

    .line 1652
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->clearCalendar(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 1654
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->updateWrapSelectorWheel()V

    .line 1655
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1656
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1657
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V
    .locals 0

    .line 1397
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    return-void
.end method

.method public setOnValueChangedListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;

    return-void
.end method

.method public setValue(Ljava/util/Calendar;)V
    .locals 1

    .line 1459
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_1
    const/4 v0, 0x0

    .line 1462
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setValueInternal(Ljava/util/Calendar;Z)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1583
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    .line 1584
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->updateWrapSelectorWheel()V

    return-void
.end method

.method public startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
    .locals 1

    .line 1793
    iput-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    .line 1794
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    .line 1797
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    invoke-direct {v0, p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
