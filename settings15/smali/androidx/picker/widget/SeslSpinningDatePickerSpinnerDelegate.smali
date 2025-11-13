.class public final Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;
.super Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public final SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field public final mActivatedAlpha:F

.field public final mAdjustScroller:Landroid/widget/Scroller;

.field public mAlpha:F

.field public mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBottomSelectionDividerBottom:I

.field public mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

.field public mChangeValueBy:I

.field public final mColorInAnimator:Landroid/animation/ValueAnimator;

.field public final mColorOutAnimator:Landroid/animation/ValueAnimator;

.field public final mColorUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

.field public final mComputeMaxWidth:Z

.field public mCurrentScrollOffset:I

.field public final mCustomScroller:Landroid/widget/Scroller;

.field public mDecrementVirtualButtonPressed:Z

.field public final mDefaultTypeface:Landroid/graphics/Typeface;

.field public final mFadeInAnimator:Landroid/animation/ValueAnimator;

.field public final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field public mFlingScroller:Landroid/widget/Scroller;

.field public final mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

.field public final mGravityScroller:Landroid/widget/OverScroller;

.field public final mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

.field public mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

.field public final mHeightRatio:F

.field public final mIdleAlpha:F

.field public mIgnoreMoveEvents:Z

.field public mIncrementVirtualButtonPressed:Z

.field public final mInitialAlpha:F

.field public mInitialScrollOffset:I

.field public final mInputText:Landroid/widget/EditText;

.field public mIsHcfEnabled:Z

.field public mIsLongClicked:Z

.field public mIsLongPressed:Z

.field public mIsStartingAnimation:Z

.field public mIsValueChanged:Z

.field public mLastDownEventTime:J

.field public mLastDownEventY:F

.field public mLastDownOrMoveEventY:F

.field public mLastFocusedChildVirtualViewId:I

.field public mLastHoveredChildVirtualViewId:I

.field public final mLinearScroller:Landroid/widget/Scroller;

.field public mLongPressCount:I

.field public mLongPressUpdateInterval:J

.field public mLongPressed_FIRST_SCROLL:Z

.field public mLongPressed_SECOND_SCROLL:Z

.field public mLongPressed_THIRD_SCROLL:Z

.field public final mMaxHeight:I

.field public final mMaxValue:Ljava/util/Calendar;

.field public mMaxWidth:I

.field public final mMaximumFlingVelocity:I

.field public final mMinHeight:I

.field public final mMinValue:Ljava/util/Calendar;

.field public final mMinWidth:I

.field public final mMinimumFlingVelocity:I

.field public mModifiedTxtHeight:I

.field public mPerformClickOnTap:Z

.field public final mPickerContentDescription:Ljava/lang/String;

.field public final mPickerSoundIndex:I

.field public mPickerSubTypeface:Landroid/graphics/Typeface;

.field public mPickerTypeface:Landroid/graphics/Typeface;

.field public final mPickerVibrateIndex:I

.field public final mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

.field public mPreviousScrollerY:I

.field public mPreviousSpringY:F

.field public mReservedStartAnimation:Z

.field public mScrollState:I

.field public final mSelectionDividerHeight:I

.field public mSelectorElementHeight:I

.field public final mSelectorIndexToStringCache:Ljava/util/HashMap;

.field public final mSelectorIndices:[Ljava/util/Calendar;

.field public final mSelectorWheelPaint:Landroid/graphics/Paint;

.field public final mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mSpringAnimationEndListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;

.field public final mSpringAnimationUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;

.field public mSpringFlingRunning:Z

.field public mTextColor:I

.field public final mTextColorScrolling:I

.field public final mTextSize:I

.field public mTopSelectionDividerTop:I

.field public final mTouchSlop:I

.field public final mUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

.field public final mValue:Ljava/util/Calendar;

.field public mValueChangeOffset:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-wide/16 v9, 0x12c

    iput-wide v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/util/Calendar;

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    const/high16 v9, -0x80000000

    iput v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    iput-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    iput-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    iput-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    iput-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    iput-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const v12, 0x3ecccccd    # 0.4f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e2e147b    # 0.17f

    const v14, 0x3f547ae1    # 0.83f

    invoke-direct {v9, v10, v10, v14, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    const v9, 0x3dcccccd    # 0.1f

    iput v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    iput v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    iput v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    new-instance v9, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-direct {v9, v0, v8}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    new-instance v9, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-direct {v9, v0, v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    new-instance v9, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;

    invoke-direct {v9, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;

    new-instance v9, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;

    invoke-direct {v9, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0710ff

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v14, 0x7f071100

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v15, 0x7f0710fe

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    int-to-float v11, v10

    div-float/2addr v15, v11

    iput v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHeightRatio:F

    sget-object v11, Landroidx/picker/R$styleable;->NumberPicker:[I

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v15, -0x1

    invoke-virtual {v11, v6, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinHeight:I

    invoke-virtual {v11, v8, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxHeight:I

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinWidth:I

    invoke-virtual {v11, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v11, v14}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v11, v14}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v14, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    sget-object v14, Landroidx/picker/R$styleable;->DatePicker:[I

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x76e

    :try_start_0
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v11, v4, v8, v7}, Ljava/util/Calendar;->set(III)V

    const/16 v4, 0x834

    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v5, 0xb

    const/16 v11, 0x1f

    invoke-virtual {v6, v4, v5, v11}, Ljava/util/Calendar;->set(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v12, v15, :cond_1

    if-eq v10, v15, :cond_1

    if-gt v12, v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq v13, v15, :cond_3

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    if-eq v3, v15, :cond_3

    if-gt v13, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v7, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectionDividerHeight:I

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    if-ne v3, v15, :cond_4

    move v3, v7

    goto :goto_2

    :cond_4
    move v3, v8

    :goto_2
    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mComputeMaxWidth:Z

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f040157

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    const/4 v6, 0x0

    const/high16 v10, 0x33000000

    const v11, 0xffffff

    if-eqz v5, :cond_5

    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :goto_3
    and-int/2addr v3, v11

    or-int/2addr v3, v10

    goto :goto_4

    :cond_5
    iget v3, v3, Landroid/util/TypedValue;->data:I

    goto :goto_3

    :goto_4
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    const v5, 0x3e4ccccd    # 0.2f

    if-nez v3, :cond_6

    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    :cond_6
    new-instance v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-direct {v3, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v10, 0x7f0d0b05

    invoke-virtual {v3, v10, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f0a04ab

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    const-string v3, "sec-roboto-condensed-light"

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const-string v10, "sec"

    invoke-static {v10, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    const/16 v11, 0x258

    invoke-static {v10, v11, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v10}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_7
    const-string v1, "sans-serif-thin"

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    :cond_8
    :goto_5
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/reflect/content/res/SeslConfigurationReflector;->isDexEnabled(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "theme_font_clock"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    :cond_9
    move-object v1, v6

    :goto_6
    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    goto :goto_7

    :cond_a
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    :cond_b
    :goto_7
    invoke-static {}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    :cond_c
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {v1}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsHcfEnabled:Z

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v7, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->getEnableStateSet()[I

    move-result-object v3

    invoke-virtual {v1, v3, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const v4, 0x7f0608cd

    invoke-virtual {v9, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColorScrolling:I

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTouchSlop:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinimumFlingVelocity:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaximumFlingVelocity:I

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    new-instance v2, Landroid/widget/Scroller;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v4, v5, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/Scroller;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/Scroller;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/4 v9, 0x0

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v9, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v2, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    new-instance v2, Landroid/widget/OverScroller;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v4, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v2, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;

    iget-object v5, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object v2, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v2, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    sget-object v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDateFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-ne v2, v4, :cond_e

    goto :goto_8

    :cond_e
    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    :goto_8
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_f
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    const/16 v2, 0x20

    invoke-static {v2}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerVibrateIndex:I

    invoke-static {}, Landroidx/reflect/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL()I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSoundIndex:I

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setDefaultFocusHighlightEnabled(Z)V

    const-string v2, ""

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/reflect/view/SeslViewReflector;->semSetDirectPenInputEnabled(Landroid/view/View;)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v2, v6, v8

    aput v4, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    const/4 v11, 0x2

    new-array v11, v11, [F

    aput v2, v11, v8

    aput v6, v11, v7

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorUpdateListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p0, 0xb

    const/16 v0, 0xc

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    return-object p1
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
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    iput v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, v3

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_5

    iput v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    :cond_5
    :goto_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_6

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    const/16 v0, 0x64

    :goto_1
    move v6, v0

    goto :goto_2

    :cond_6
    const/16 v0, 0x1f4

    goto :goto_1

    :goto_2
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int p1, p1

    mul-int v5, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int v5, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_3
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

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

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-nez v1, :cond_2

    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "EEE, MMM d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const v3, 0x8001a

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ensureScrollWheelAdjusted(I)Z
    .locals 9

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    iput v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

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

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v3, v1, 0x2

    if-le p1, v3, :cond_2

    if-lez v0, :cond_1

    goto :goto_0

    :goto_1
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/16 v8, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    const/4 p0, 0x1

    return p0

    :cond_4
    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    return v2
.end method

.method public final formatDateForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    if-nez v0, :cond_0

    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string v0, "EEE, MMM d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 p1, 0x1a

    invoke-static {p0, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method public final initializeSelectorWheelIndices()V
    .locals 6

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    add-int/lit8 v4, v2, -0x2

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    aput-object v3, v0, v2

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v3, v1

    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    rem-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

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

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(I)V

    return v0

    :cond_3
    return v2
.end method

.method public final onScrollStateChange(I)V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    return-void
.end method

.method public final postChangeCurrentByOneFromLongPress(JZ)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    iput-boolean p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-virtual {v1, p0, p1, p2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final removeAllCallbacks()V
    .locals 2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_0
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    return-void
.end method

.method public final scrollBy(I)V
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    if-eqz p1, :cond_9

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v2, :cond_1

    aget-object v1, v0, v4

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr p1, v1

    :cond_1
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v1, v2, :cond_2

    aget-object v1, v0, v4

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr p1, v1

    :cond_2
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v1, p1, v1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-lt v1, v2, :cond_6

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    array-length p1, v0

    sub-int/2addr p1, v5

    invoke-static {v0, v3, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v0, v5

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v1, -0x1

    invoke-virtual {p1, v6, v1}, Ljava/util/Calendar;->add(II)V

    aput-object p1, v0, v3

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_5

    aget-object p1, v0, v4

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setValueInternal(Ljava/util/Calendar;)V

    iput-boolean v5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    if-lez p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSoundIndex:I

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    iget-boolean v1, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerVibrateIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    iput-boolean v5, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_5
    :goto_1
    aget-object p1, v0, v4

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-gtz p1, :cond_3

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_6
    :goto_2
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v1, p1, v1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    neg-int v2, v2

    if-gt v1, v2, :cond_9

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    array-length p1, v0

    sub-int/2addr p1, v5

    invoke-static {v0, v5, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    sub-int/2addr p1, v4

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1, v6, v5}, Ljava/util/Calendar;->add(II)V

    array-length v1, v0

    sub-int/2addr v1, v5

    aput-object p1, v0, v1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureCachedScrollSelectorValue(Ljava/util/Calendar;)V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_8

    aget-object p1, v0, v4

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setValueInternal(Ljava/util/Calendar;)V

    iput-boolean v5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    if-lez p1, :cond_7

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressCount:I

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSoundIndex:I

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    iget-boolean v1, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerVibrateIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    iput-boolean v5, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_8
    :goto_3
    aget-object p1, v0, v4

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-ltz p1, :cond_6

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public final setInputTextTypeface()V
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsHcfEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public final setValueInternal(Ljava/util/Calendar;)V
    .locals 8

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x5

    if-lez v1, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v0, v3

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->formatDateForAccessibility(Ljava/util/Calendar;)Ljava/lang/String;

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_5
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final startFadeAnimation(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

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

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColorScrolling:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method public final stopScrollAnimation()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    return-void
.end method
