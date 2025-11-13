.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.super Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;,
        Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;,
        Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;,
        Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;,
        Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;,
        Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C


# instance fields
.field private final ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final FAST_SCROLL_VELOCITY_START:F

.field private final SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field private mActivatedAlpha:F

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAlpha:F

.field private mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mColorInAnimator:Landroid/animation/ValueAnimator;

.field private mColorOutAnimator:Landroid/animation/ValueAnimator;

.field private mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mComputeMaxWidth:Z

.field private mCurVelocity:F

.field private mCurrentScrollOffset:I

.field private final mCustomScroller:Landroid/widget/Scroller;

.field private mCustomTypefaceSet:Z

.field private mCustomWheelIntervalMode:Z

.field private mDecrementVirtualButtonPressed:Z

.field private final mDefaultTypeface:Landroid/graphics/Typeface;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroidx/picker/widget/SeslNumberPicker$Formatter;

.field private mGravityScroller:Landroid/widget/OverScroller;

.field private mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

.field private mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

.field private final mHeightRatio:F

.field private mHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mIdleAlpha:F

.field private mIgnoreMoveEvents:Z

.field private mIgnoreUpEvent:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialAlpha:F

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsAmPm:Z

.field private mIsBoldTextEnabled:Z

.field private mIsEditTextMode:Z

.field private mIsEditTextModeEnabled:Z

.field private mIsHcfEnabled:Z

.field private mIsLongClicked:Z

.field private mIsLongPressed:Z

.field private mIsPressedBackKey:Z

.field private mIsStartingAnimation:Z

.field private mIsValueChanged:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastFocusedChildVirtualViewId:I

.field private mLastHoveredChildVirtualViewId:I

.field private final mLegacyTypeface:Landroid/graphics/Typeface;

.field private final mLinearScroller:Landroid/widget/Scroller;

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModifiedTxtHeight:I

.field private mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private mOnScrollListener:Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private mPickerContentDescription:Ljava/lang/String;

.field private mPickerSoundFastIndex:I

.field private mPickerSoundIndex:I

.field private mPickerSoundSlowIndex:I

.field private mPickerSubTypeface:Landroid/graphics/Typeface;

.field private mPickerTypeface:Landroid/graphics/Typeface;

.field private mPickerVibrateIndex:I

.field private final mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mPreviousSpringY:F

.field private mReservedStartAnimation:Z

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mShortFlickThreshold:I

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mSpringAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mSpringAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private mSpringFlingRunning:Z

.field private mSwitchIntervalOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

.field private mTextColor:I

.field private final mTextColorIdle:I

.field private final mTextColorScrolling:I

.field private mTextSize:I

.field private mToast:Landroid/widget/Toast;

.field private mToastText:Ljava/lang/String;

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUnitValue:Ljava/lang/String;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValue:I

.field private mValueChangeOffset:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWheelInterval:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z

.field private selectedPickerColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    .line 2944
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

    move-object/from16 v0, p0

    .line 520
    invoke-direct/range {p0 .. p2}, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;-><init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 223
    iput v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    const/4 v2, 0x0

    .line 224
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    .line 226
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsPressedBackKey:Z

    .line 251
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v3, 0x5

    new-array v3, v3, [I

    .line 256
    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    const/high16 v3, -0x80000000

    .line 276
    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 355
    iput-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    .line 365
    iput v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    .line 428
    iput-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    .line 444
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    .line 445
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    .line 446
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 458
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 460
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 472
    iput-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    .line 474
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 475
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e2e147b    # 0.17f

    const v9, 0x3f547ae1    # 0.83f

    invoke-direct {v4, v8, v8, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 477
    iput v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    const v8, 0x3dcccccd    # 0.1f

    .line 478
    iput v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    .line 479
    iput v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    .line 480
    iput v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    const/high16 v8, 0x447a0000    # 1000.0f

    .line 490
    iput v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->FAST_SCROLL_VELOCITY_START:F

    const/16 v8, 0x6a4

    .line 493
    iput v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mShortFlickThreshold:I

    .line 2305
    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;

    invoke-direct {v8, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$6;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2313
    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$7;

    invoke-direct {v8, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$7;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2321
    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;

    invoke-direct {v8, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 2342
    new-instance v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;

    invoke-direct {v8, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 522
    iget-object v8, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 523
    sget v9, Landroidx/picker/R$dimen;->sesl_number_picker_spinner_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 524
    sget v10, Landroidx/picker/R$dimen;->sesl_number_picker_spinner_width:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 525
    sget v11, Landroidx/picker/R$dimen;->sesl_number_picker_spinner_edit_text_height:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v9

    div-float/2addr v11, v12

    .line 527
    iput v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHeightRatio:F

    .line 530
    sget-object v11, Landroidx/picker/R$styleable;->NumberPicker:[I

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 533
    sget v13, Landroidx/picker/R$styleable;->NumberPicker_internalMinHeight:I

    const/4 v14, -0x1

    invoke-virtual {v11, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    .line 535
    sget v15, Landroidx/picker/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {v11, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    .line 537
    sget v15, Landroidx/picker/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {v11, v15, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    .line 539
    sget v15, Landroidx/picker/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {v11, v15, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 542
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v13, v14, :cond_1

    if-eq v9, v14, :cond_1

    if-gt v13, v9, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq v10, v14, :cond_3

    .line 548
    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v9, v14, :cond_3

    if-gt v10, v9, :cond_2

    goto :goto_1

    .line 550
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    .line 555
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 553
    invoke-static {v1, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    .line 557
    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-ne v9, v14, :cond_4

    move v9, v1

    goto :goto_2

    :cond_4
    move v9, v2

    :goto_2
    iput-boolean v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    .line 559
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    if-nez v9, :cond_5

    .line 560
    iput v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    .line 562
    :cond_5
    new-instance v9, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-direct {v9, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 569
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 571
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 573
    sget v11, Landroidx/picker/R$layout;->sesl_number_picker_spinner:I

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9, v11, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 576
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    sget v11, Landroidx/picker/R$id;->numberpicker_input:I

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    .line 577
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 578
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 579
    new-instance v11, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;

    invoke-direct {v11, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 589
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v11

    iput-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    const-string v13, "sec-roboto-condensed-light"

    .line 590
    invoke-static {v13, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    iput-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLegacyTypeface:Landroid/graphics/Typeface;

    const-string v15, "sec-roboto-light"

    .line 591
    invoke-static {v15, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    iput-object v15, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 592
    invoke-virtual {v11, v15}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 593
    iget-object v15, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v15}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 594
    iput-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_6
    const-string v13, "sans-serif-thin"

    .line 596
    invoke-static {v13, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    iput-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 599
    :cond_7
    :goto_3
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v13, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v13

    iput-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 601
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-static {v13}, Landroidx/reflect/content/res/SeslConfigurationReflector;->isDexEnabled(Landroid/content/res/Configuration;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 603
    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "theme_font_clock"

    invoke-static {v10, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 605
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    .line 606
    invoke-static {v10}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 607
    invoke-static {v10, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    goto :goto_4

    .line 610
    :cond_8
    iput v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    .line 613
    :cond_9
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 614
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 615
    iput-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 616
    invoke-static {v11, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 618
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isHighContrastFontEnabled()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsHcfEnabled:Z

    .line 619
    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {v10, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    .line 620
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    .line 621
    sget v10, Landroidx/picker/R$color;->sesl_number_picker_text_color_scroll:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-static {v8, v10, v11}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v10

    iput v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorScrolling:I

    .line 622
    invoke-virtual {v9}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 623
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v13}, Landroidx/picker/widget/SeslNumberPicker;->getEnableStateSet()[I

    move-result-object v13

    .line 625
    invoke-virtual {v11, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    iput v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    .line 626
    sget v13, Landroidx/picker/R$color;->sesl_number_picker_text_highlight_color:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-static {v8, v13, v14}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v13

    iput v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->selectedPickerColor:I

    .line 631
    iput v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    .line 632
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->selectedPickerColor:I

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 634
    new-instance v13, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;

    invoke-direct {v13, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 646
    new-instance v13, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$3;

    invoke-direct {v13, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$3;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-array v13, v1, [Landroid/text/InputFilter;

    .line 657
    new-instance v14, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;

    invoke-direct {v14, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    aput-object v14, v13, v2

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v13, 0x2

    .line 661
    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setRawInputType(I)V

    const v14, 0x2000006

    .line 662
    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 663
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 664
    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->selectedPickerColor:I

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 669
    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v14

    .line 668
    invoke-static {v9, v14}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 672
    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    .line 673
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    iput v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    .line 674
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    mul-int/2addr v14, v13

    iput v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    .line 675
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    iput v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    .line 677
    invoke-virtual {v9}, Landroid/widget/EditText;->getTextSize()F

    move-result v12

    float-to-int v12, v12

    iput v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    .line 680
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 681
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 682
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 683
    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 684
    iget-object v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 685
    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 686
    iput-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 687
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v12, v14

    iput v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    .line 688
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateBoldTextEnabledInSettings()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 689
    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 696
    :cond_b
    new-instance v12, Landroid/widget/Scroller;

    iget-object v14, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v12, v14, v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    .line 697
    new-instance v3, Landroid/widget/Scroller;

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-direct {v3, v12, v14, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    .line 698
    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 699
    new-instance v3, Landroid/widget/Scroller;

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v13, 0x3e99999a    # 0.3f

    invoke-direct {v15, v6, v5, v13, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v3, v12, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 700
    new-instance v3, Landroid/widget/OverScroller;

    iget-object v5, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v3, v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    .line 702
    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 703
    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 704
    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 705
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 706
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 707
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 708
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 709
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const v5, 0x3f7d70a4    # 0.99f

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 711
    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroidx/picker/widget/SeslNumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V

    .line 712
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 714
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 717
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_c

    .line 718
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 721
    :cond_c
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 723
    new-instance v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-direct {v3, v14}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    const/16 v3, 0x20

    .line 724
    invoke-static {v3}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerVibrateIndex:I

    .line 725
    invoke-static {}, Landroidx/reflect/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL()I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundIndex:I

    .line 726
    invoke-static {}, Landroidx/reflect/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL_FAST()I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundFastIndex:I

    .line 727
    invoke-static {}, Landroidx/reflect/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL_SLOW()I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSoundSlowIndex:I

    .line 728
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroidx/reflect/media/SeslSemSoundAssistantManagerReflector;->setFastAudioOpenMode(Landroid/content/Context;Z)V

    .line 731
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 732
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 734
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setDefaultFocusHighlightEnabled(Z)V

    const-string v3, ""

    .line 736
    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 737
    sget v5, Landroidx/picker/R$string;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    .line 738
    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    .line 742
    invoke-static {v9, v2}, Landroidx/reflect/view/SeslViewReflector;->semSetDirectPenInputEnabled(Landroid/view/View;Z)V

    .line 745
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x2

    new-array v5, v3, [F

    .line 747
    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    aput v3, v5, v2

    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    aput v3, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 748
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 749
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 750
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 751
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x2

    new-array v9, v3, [F

    .line 753
    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    aput v3, v9, v2

    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    aput v3, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 754
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 756
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 758
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v1

    invoke-static {v3, v12}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    .line 759
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 760
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 761
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 763
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v3, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    .line 764
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 765
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 766
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 767
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method static synthetic access$1000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return p0
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void
.end method

.method static synthetic access$1502(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I
    .locals 0

    .line 99
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroidx/picker/util/SeslAnimationListener;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    return-object p0
.end method

.method static synthetic access$1902(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;F)F
    .locals 0

    .line 99
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    return p1
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2002(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I
    .locals 0

    .line 99
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    return p1
.end method

.method static synthetic access$2102(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;F)F
    .locals 0

    .line 99
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurVelocity:F

    return p1
.end method

.method static synthetic access$2200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)F
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousSpringY:F

    return p0
.end method

.method static synthetic access$2202(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;F)F
    .locals 0

    .line 99
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousSpringY:F

    return p1
.end method

.method static synthetic access$2300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    return p0
.end method

.method static synthetic access$2302(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    return p1
.end method

.method static synthetic access$2400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/OverScroller;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$2700()[C
    .locals 1

    .line 99
    sget-object v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Ljava/lang/String;)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    return p0
.end method

.method static synthetic access$3100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$3300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initToastObject()V

    return-void
.end method

.method static synthetic access$3400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->needCompareEqualMonthLanguage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$3502(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$3580(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$3700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$3702(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$3780(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$3902(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return p1
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return p0
.end method

.method static synthetic access$4002(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreUpEvent:Z

    return p1
.end method

.method static synthetic access$4100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    return p0
.end method

.method static synthetic access$4200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    return p0
.end method

.method static synthetic access$4300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    return p0
.end method

.method static synthetic access$4400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$4500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$4600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$4700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    return p0
.end method

.method static synthetic access$4800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    return p0
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    return p0
.end method

.method static synthetic access$5000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    return p0
.end method

.method static synthetic access$5100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    return p0
.end method

.method static synthetic access$602(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    return p1
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p0
.end method

.method static synthetic access$702(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p1
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$802(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0

    .line 99
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 2604
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2605
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2606
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 2608
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 2611
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 2613
    :cond_1
    iget-object v7, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    const/16 v12, 0x1f4

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2615
    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 2738
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2739
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2740
    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge v0, v1, :cond_0

    .line 2741
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 2743
    :cond_0
    aput v0, p1, v2

    .line 2744
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 2752
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2753
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 2757
    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 2760
    :cond_1
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 2762
    aget-object p0, v2, p0

    goto :goto_1

    .line 2764
    :cond_2
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 2767
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 1

    const/4 v0, 0x0

    .line 3058
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    move-result p0

    return p0
.end method

.method private ensureScrollWheelAdjusted(I)Z
    .locals 8

    .line 3063
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    .line 3066
    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 3068
    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 3069
    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-ge p1, v2, :cond_1

    if-lez v0, :cond_2

    goto :goto_0

    .line 3071
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le p1, v3, :cond_3

    if-lez v0, :cond_2

    :goto_0
    neg-int v2, v2

    :cond_2
    add-int/2addr v0, v2

    :cond_3
    move v6, v0

    .line 3074
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x12c

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3075
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 3076
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    const/4 p0, 0x1

    return p0

    .line 3079
    :cond_4
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    return v1
.end method

.method private ensureValueAdjusted(I)V
    .locals 3

    .line 929
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    rem-int v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 934
    :cond_0
    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v0, v1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    :goto_0
    const/4 p1, 0x1

    .line 935
    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    return-void
.end method

.method private fling(I)V
    .locals 11

    .line 2679
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2680
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void

    .line 2684
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2685
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2688
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2689
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    mul-float/2addr v0, v2

    .line 2690
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 2692
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousSpringY:F

    .line 2693
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2694
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 2695
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 2696
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v2

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v3

    if-lez p1, :cond_2

    add-int/2addr v2, v3

    .line 2698
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_2
    neg-int p1, v2

    add-int/2addr p1, v3

    .line 2699
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    .line 2701
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2702
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 2703
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 2704
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 2771
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 3696
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

    .line 2155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2158
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2913
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2915
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2920
    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2922
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2923
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2924
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2933
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 2938
    :catch_0
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    return p0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 2711
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2712
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr p1, p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    .line 2713
    :cond_0
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, v0, p1

    sub-int p0, v0, p0

    add-int/lit8 p0, p0, 0x1

    .line 2714
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1832
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1833
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1834
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1835
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    .line 2724
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2725
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 2726
    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le v0, v2, :cond_0

    .line 2727
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    .line 2729
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 2730
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initToastObject()V
    .locals 3

    .line 3043
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    .line 3044
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3045
    sget v1, Landroidx/picker/R$layout;->sesl_custom_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3046
    sget v1, Landroidx/picker/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3047
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3048
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 2619
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_1

    .line 2620
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2621
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2623
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    goto :goto_0

    .line 2625
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    :goto_0
    const/4 v0, 0x3

    .line 2628
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    mul-int/2addr v1, v0

    .line 2629
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2630
    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2631
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    .line 2632
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    if-gt v1, v2, :cond_2

    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v2, :cond_3

    .line 2633
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    :cond_3
    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    .line 2634
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2635
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2637
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 2638
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBaseline()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2639
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v1, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;->setEditTextPosition(I)V

    .line 2640
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v0, :cond_4

    .line 2641
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    .line 2642
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    :cond_4
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 2546
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2547
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 2548
    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget v1, v0, v1

    goto :goto_0

    .line 2549
    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 2550
    :goto_1
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, -0x2

    .line 2552
    iget-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 2553
    iget-boolean v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_2

    .line 2554
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 2556
    :cond_2
    aput v3, v0, v2

    .line 2557
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private isCharacterNumberLanguage()Z
    .locals 1

    .line 3743
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 3744
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

    .line 3777
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 2507
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 2508
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 2517
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

    .line 2515
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 2513
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

    .line 1025
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1026
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1029
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 1033
    :cond_0
    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v3, v1

    .line 1034
    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 1036
    rem-int/2addr v4, p1

    .line 1037
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

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

    .line 1045
    invoke-virtual {p0, v2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    return v0

    :cond_3
    return v2
.end method

.method private needCompareEqualMonthLanguage()Z
    .locals 2

    .line 3751
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vi"

    .line 3752
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    .line 3753
    invoke-virtual {p0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object p0

    const-string v0, "inputType=month_edittext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyChange(II)V
    .locals 3

    .line 2823
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p2, :cond_4

    .line 2824
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p2

    .line 2826
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt p2, v0, :cond_1

    .line 2827
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    goto :goto_0

    .line 2828
    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr p2, v1

    aget-object p2, v0, p2

    .line 2830
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2831
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2832
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    const/4 v1, 0x2

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    const/16 v0, 0x40

    const/4 v2, 0x0

    .line 2834
    invoke-virtual {p2, v1, v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_2
    if-eqz p2, :cond_4

    .line 2839
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v0, v2, :cond_4

    :cond_3
    const v0, 0x8000

    .line 2840
    invoke-virtual {p2, v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2845
    :cond_4
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_5

    .line 2846
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {p2, v0, p1, p0}, Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;->onValueChange(Landroidx/picker/widget/SeslNumberPicker;II)V

    :cond_5
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 2666
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2669
    :cond_0
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    .line 2670
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnScrollListener:Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2671
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-interface {v0, p0, p1}, Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;->onScrollStateChange(Landroidx/picker/widget/SeslNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 2650
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 2651
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2652
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 2654
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    .line 2656
    :cond_1
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 2657
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private playSoundAndHapticFeedback()V
    .locals 3

    .line 1546
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

    .line 1549
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_1

    .line 1550
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const v1, 0xc388

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    .line 1551
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_1
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2878
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2879
    new-instance v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2881
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2883
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSwitchIntervalOnLongPress()V
    .locals 3

    .line 2855
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSwitchIntervalOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2856
    new-instance v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSwitchIntervalOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

    goto :goto_0

    .line 2858
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2861
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSwitchIntervalOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 2

    .line 2899
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSwitchIntervalOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2900
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2903
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1

    .line 2904
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2906
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2890
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2891
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeSwitchIntervalOnLongPress()V
    .locals 1

    .line 2868
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSwitchIntervalOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2869
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 2534
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 2535
    invoke-static {p0, p3, p1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setInputTextTypeface()V
    .locals 1

    .line 2132
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsHcfEnabled:Z

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 2135
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 2568
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ne v0, p1, :cond_1

    .line 2569
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2570
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2571
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void

    .line 2577
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 2578
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 2580
    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2581
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2583
    :goto_0
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 2584
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 2585
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    if-eqz p2, :cond_3

    .line 2587
    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->notifyChange(II)V

    .line 2589
    :cond_3
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2590
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 2591
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2592
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p0, p2}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1819
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1822
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1823
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 1824
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private showSoftInputForWindowFocused()V
    .locals 4

    .line 1793
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFadeAnimation(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2353
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

    .line 2354
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

    .line 2355
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2356
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 2358
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    aput v3, v2, v0

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mActivatedAlpha:F

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2359
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [I

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    aput v2, v1, v0

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorScrolling:I

    aput v0, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2360
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2361
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2362
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2363
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method private stopFlingAnimation()V
    .locals 1

    .line 2298
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2299
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2300
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2301
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 2302
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    .line 2285
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2286
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2287
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2288
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 2289
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 2290
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    .line 2291
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2294
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 6

    .line 1843
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1848
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 1851
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1857
    :cond_2
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1860
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_3

    .line 1865
    :cond_4
    array-length v0, v0

    move v2, v1

    move v3, v2

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1867
    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-int v2, v4

    .line 1870
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

    .line 1874
    :goto_3
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1875
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isHighContrastFontEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1876
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroidx/reflect/graphics/SeslPaintReflector;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 1877
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 1880
    :cond_7
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v1, v0, :cond_9

    .line 1881
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v0, v1, :cond_8

    .line 1882
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_4

    .line 1884
    :cond_8
    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 1886
    :goto_4
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_9
    return-void
.end method

.method private updateBoldTextEnabledInSettings()Z
    .locals 3

    .line 3785
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsBoldTextEnabled:Z

    return v2
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2

    .line 1528
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1533
    :cond_0
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1535
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    const/16 v1, 0x80

    .line 1538
    invoke-virtual {p0, p1, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    const/16 p1, 0x100

    .line 1539
    invoke-virtual {p0, v0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 2807
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2808
    :cond_0
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 2809
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

    .line 2810
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2811
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

.method private updateWrapSelectorWheel()V
    .locals 4

    .line 1934
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

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

    .line 1935
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1936
    :goto_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq v0, v2, :cond_2

    .line 1937
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    .line 1938
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1939
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 4

    .line 2775
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2776
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2786
    :cond_0
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p1, v2, :cond_2

    iget-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz v3, :cond_2

    .line 2787
    rem-int p1, v0, p1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->applyWheelCustomInterval(Z)V

    .line 2789
    :cond_2
    invoke-direct {p0, v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_1

    .line 2779
    :cond_3
    :goto_0
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p1, v2, :cond_5

    iget-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsPressedBackKey:Z

    if-eqz v3, :cond_5

    .line 2780
    rem-int/2addr v0, p1

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->applyWheelCustomInterval(Z)V

    goto :goto_1

    .line 2782
    :cond_5
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_1
    return-void
.end method


# virtual methods
.method public applyWheelCustomInterval(Z)V
    .locals 2

    .line 915
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 919
    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz p1, :cond_1

    .line 921
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureValueAdjusted(I)V

    .line 923
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 924
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1570
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 1573
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 1574
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1575
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1576
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1580
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1581
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1582
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_2

    .line 1583
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    :cond_2
    const/4 v2, 0x0

    .line 1585
    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1586
    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1587
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1588
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1590
    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 0

    .line 1671
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .locals 0

    .line 1661
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return p0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1666
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1494
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1497
    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1499
    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-gt v0, v2, :cond_1

    move v3, v4

    goto :goto_0

    .line 1501
    :cond_1
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-gt v2, v0, :cond_2

    const/4 v3, 0x3

    .line 1506
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x7

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    return v1

    .line 1514
    :cond_3
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v2, :cond_4

    .line 1515
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateHoveredVirtualView(I)V

    return v4

    :cond_4
    return v1

    .line 1510
    :cond_5
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateHoveredVirtualView(I)V

    if-eq v3, v2, :cond_6

    move v1, v4

    :cond_6
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1363
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1364
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x3

    const/16 v2, 0x42

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v2, :cond_e

    const/16 v6, 0xa0

    if-eq p1, v6, :cond_e

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-nez v0, :cond_16

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1410
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1412
    invoke-virtual {p0, v2}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    return v5

    .line 1417
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1419
    invoke-virtual {p0, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_3
    return v5

    .line 1428
    :pswitch_1
    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_4

    return v4

    :cond_4
    if-nez v0, :cond_c

    const/16 v0, 0x14

    if-ne p1, v0, :cond_8

    .line 1433
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_5

    goto/16 :goto_0

    .line 1439
    :cond_5
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    return v4

    .line 1442
    :cond_6
    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1443
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    .line 1435
    :cond_7
    iput v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1436
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    :cond_8
    const/16 v0, 0x13

    if-ne p1, v0, :cond_16

    .line 1450
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_9

    goto/16 :goto_0

    .line 1461
    :cond_9
    iput v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1462
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    .line 1454
    :cond_a
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    return v4

    .line 1457
    :cond_b
    iput v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1458
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return v5

    :cond_c
    if-ne v0, v5, :cond_16

    .line 1468
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1469
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_d

    .line 1471
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_d
    return v5

    .line 1369
    :cond_e
    :pswitch_2
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_f

    return v4

    :cond_f
    if-ne v0, v5, :cond_16

    .line 1373
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne p1, v3, :cond_11

    .line 1374
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez p1, :cond_10

    return v4

    .line 1377
    :cond_10
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1378
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1379
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1380
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    return v5

    .line 1382
    :cond_11
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1383
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq p1, v5, :cond_14

    if-eq p1, v1, :cond_12

    goto :goto_0

    .line 1385
    :cond_12
    invoke-direct {p0, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1386
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1387
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p1, v0, :cond_13

    .line 1388
    iput v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1390
    :cond_13
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_0

    .line 1393
    :cond_14
    invoke-direct {p0, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1394
    invoke-direct {p0, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1395
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_15

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v0

    add-int/2addr v0, v5

    if-ne p1, v0, :cond_15

    .line 1396
    iput v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1398
    :cond_15
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    :cond_16
    :goto_0
    return v4

    nop

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
    .locals 3

    .line 1000
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1004
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 1006
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1007
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsPressedBackKey:Z

    .line 1008
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 1009
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    return p1

    .line 1012
    :cond_2
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsPressedBackKey:Z

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1266
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1487
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 2490
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 2491
    new-instance v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2493
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 2045
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    .line 3717
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 2002
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1960
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    return p0
.end method

.method public getPaintFlags()I
    .locals 0

    .line 2174
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result p0

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1950
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1900
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return p0
.end method

.method public isChangedDefaultInterval()Z
    .locals 2

    .line 940
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEditTextMode()Z
    .locals 0

    .line 945
    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return p0
.end method

.method public isEditTextModeNotAmPm()Z
    .locals 1

    .line 1764
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

.method public onAttachedToWindow()V
    .locals 1

    .line 2382
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2383
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1297
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsBoldTextEnabled:Z

    .line 1298
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateBoldTextEnabledInSettings()Z

    .line 1299
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsBoldTextEnabled:Z

    if-eq p1, v0, :cond_0

    .line 1300
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1303
    :cond_0
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz p1, :cond_1

    return-void

    .line 1307
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1308
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1309
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1310
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 1311
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    .line 1312
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    return-void

    .line 1315
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1316
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    .line 1317
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 2369
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2370
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    .line 2371
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 2372
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 2374
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2375
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2389
    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    .line 2390
    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    .line 2391
    iget-object v4, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    sub-int v3, v2, v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 2394
    iget v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 2396
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v9, :cond_3

    .line 2397
    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    goto :goto_0

    .line 2404
    :cond_0
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2405
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v7, v8, v9, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2407
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2410
    :cond_1
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2411
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2412
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2399
    :cond_2
    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2400
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v7, v8, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2401
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2418
    :cond_3
    :goto_0
    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    move v9, v8

    .line 2419
    :goto_1
    array-length v10, v7

    if-ge v9, v10, :cond_8

    .line 2420
    aget v10, v7, v9

    .line 2421
    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2422
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 2423
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2430
    :cond_4
    iget v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    .line 2431
    iget v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    cmpg-float v13, v11, v12

    if-gez v13, :cond_5

    move v11, v12

    .line 2434
    :cond_5
    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v12

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v5

    add-float/2addr v12, v6

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    .line 2435
    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v15, v13, v14

    int-to-float v15, v15

    cmpl-float v15, v6, v15

    const/high16 v16, 0x437f0000    # 255.0f

    if-ltz v15, :cond_7

    iget v15, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpg-float v14, v6, v14

    if-gtz v14, :cond_7

    add-int/2addr v13, v15

    int-to-float v13, v13

    div-float/2addr v13, v5

    cmpg-float v13, v6, v13

    if-gtz v13, :cond_6

    .line 2438
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2439
    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v1, v8, v13, v2, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2440
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 2441
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v12, v12

    .line 2442
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2443
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2444
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2445
    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v1, v8, v8, v2, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2446
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2447
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v11, v11, v16

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    mul-float/2addr v11, v14

    float-to-int v11, v11

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2448
    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2449
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 2451
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2452
    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v1, v8, v13, v2, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2453
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2454
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v12

    .line 2455
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2458
    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v1, v8, v13, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2459
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v11, v11, v16

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    mul-float/2addr v11, v14

    float-to-int v11, v11

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2460
    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2461
    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2462
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 2465
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2466
    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v11, v11, v16

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    mul-float/2addr v11, v14

    float-to-int v11, v11

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2467
    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v11, v12

    .line 2468
    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2469
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2471
    :goto_2
    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 v0, 0x2

    if-nez p1, :cond_2

    .line 1323
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1324
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_1

    .line 1326
    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    .line 1327
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1329
    :cond_0
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1333
    :cond_1
    iput p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/high16 p1, -0x80000000

    .line 1334
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1336
    :cond_2
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_3

    .line 1337
    iput p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1338
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1339
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 1342
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1343
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result p3

    if-ne p1, p3, :cond_4

    .line 1344
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1347
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1348
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_6

    .line 1350
    iget-boolean p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p3, :cond_5

    .line 1351
    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1353
    :cond_5
    iget p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x40

    invoke-virtual {p1, p3, v0, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1358
    :cond_6
    :goto_1
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1274
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    .line 1280
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_3

    .line 1282
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_2

    move v1, v0

    .line 1284
    :cond_2
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1285
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2477
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2478
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2479
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2480
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1087
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1090
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1093
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 1094
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    .line 1096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    .line 1097
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1098
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreUpEvent:Z

    .line 1099
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 1100
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    .line 1103
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gez v0, :cond_2

    .line 1104
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1105
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_3

    .line 1106
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 1109
    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 1110
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1111
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_3

    .line 1112
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    .line 1117
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1118
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1119
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1120
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1121
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v2, :cond_4

    .line 1122
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1123
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1125
    :cond_4
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_1

    .line 1126
    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1127
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1128
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1129
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1130
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 1131
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v2, :cond_6

    .line 1132
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1133
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1135
    :cond_6
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_1

    .line 1136
    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1137
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1138
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 1139
    :cond_8
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 1140
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p1, v3, :cond_c

    .line 1141
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->postSwitchIntervalOnLongPress()V

    goto :goto_1

    .line 1143
    :cond_9
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    .line 1144
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p1, v3, :cond_c

    .line 1145
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->postSwitchIntervalOnLongPress()V

    goto :goto_1

    .line 1148
    :cond_a
    iput-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 1149
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p1, v3, :cond_b

    .line 1150
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->postSwitchIntervalOnLongPress()V

    goto :goto_1

    .line 1152
    :cond_b
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->postBeginSoftInputOnLongPressCommand()V

    :cond_c
    :goto_1
    return v3

    :cond_d
    :goto_2
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 954
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 955
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 958
    iget-object p4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 959
    iget-object p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    int-to-float v0, p3

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 960
    iput p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    sub-int/2addr p2, p4

    .line 961
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 962
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 965
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 969
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheel()V

    .line 972
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-le p1, p2, :cond_0

    .line 973
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    mul-int/lit8 p1, p1, 0x2

    .line 974
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    goto :goto_0

    .line 976
    :cond_0
    iput p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    .line 977
    iput p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 985
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v0

    .line 986
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    .line 987
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2, v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->superOnMeasure(II)V

    .line 989
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    .line 990
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 989
    invoke-direct {p0, v0, v1, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 991
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    .line 992
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 991
    invoke-direct {p0, v0, v1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 993
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMeasuredDimensionWrapper(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2485
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->access$2600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1163
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1166
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1167
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1169
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_4

    .line 1252
    :cond_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1253
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1254
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_4

    .line 1173
    :cond_3
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 1176
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1177
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-eq v0, v3, :cond_5

    .line 1178
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1179
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-le v0, v2, :cond_6

    .line 1180
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 1181
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1182
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    .line 1185
    :cond_5
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 1186
    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1187
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1189
    :cond_6
    :goto_0
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto/16 :goto_4

    .line 1192
    :cond_7
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeBeginSoftInputCommand()V

    .line 1193
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeSwitchIntervalOnLongPress()V

    .line 1194
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreUpEvent:Z

    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 1198
    :cond_8
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 1199
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 1200
    iget v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1201
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 1202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v4

    .line 1203
    iget v6, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 1204
    iget-boolean v6, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v6, :cond_9

    .line 1205
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1206
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1207
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_3

    .line 1208
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v6, v7, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mShortFlickThreshold:I

    if-le v6, v7, :cond_b

    .line 1209
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v5, p1, :cond_a

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz p1, :cond_a

    .line 1210
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 1211
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    .line 1212
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 1214
    :cond_a
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->fling(I)V

    .line 1215
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 1218
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 1219
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v5, p1, :cond_f

    .line 1220
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz p1, :cond_c

    .line 1221
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 1222
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    goto :goto_2

    .line 1224
    :cond_c
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v4, p1, :cond_d

    .line 1225
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1226
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 1228
    :cond_d
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v4, p1, :cond_e

    .line 1229
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1230
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 1233
    :cond_e
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    .line 1235
    :goto_1
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_2

    .line 1238
    :cond_f
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    if-eqz p1, :cond_10

    .line 1239
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1240
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    .line 1242
    :cond_10
    invoke-direct {p0, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    .line 1243
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    .line 1245
    :goto_2
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    .line 1246
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 1248
    :goto_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1249
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_4
    return v3

    :cond_11
    :goto_5
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1053
    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1055
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1056
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 1057
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1062
    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_6

    .line 1063
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 1064
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1066
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1067
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1069
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1070
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1072
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1073
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1074
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 1076
    :cond_5
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1079
    :cond_6
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isHighContrastFontEnabled()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsHcfEnabled:Z

    .line 1080
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1081
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1082
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 1769
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1772
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method public performClick(Z)V
    .locals 1

    .line 1777
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method public performLongClick()V
    .locals 2

    const/4 v0, 0x1

    .line 1782
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1783
    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 1786
    :cond_0
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    return-void
.end method

.method public scrollBy(II)V
    .locals 6

    .line 1606
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    if-eqz p2, :cond_9

    .line 1607
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 1610
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v3, v0, p2

    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v3, v4, :cond_1

    aget v3, p1, v1

    iget v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v3, v5, :cond_1

    sub-int p2, v4, v0

    .line 1613
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopFlingAnimation()V

    .line 1614
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 1615
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    .line 1619
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v3, v0, p2

    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v3, v4, :cond_2

    aget v3, p1, v1

    iget v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v3, v5, :cond_2

    sub-int p2, v4, v0

    .line 1622
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopFlingAnimation()V

    .line 1623
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 1624
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    .line 1628
    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1629
    :cond_3
    :goto_0
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    if-lt v0, v3, :cond_6

    .line 1630
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1631
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->decrementSelectorIndices([I)V

    .line 1632
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    .line 1633
    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p2, :cond_4

    .line 1634
    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1635
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    goto :goto_1

    .line 1636
    :cond_4
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p2, v2, :cond_5

    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz p2, :cond_5

    .line 1637
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1639
    :cond_5
    :goto_1
    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt p2, v0, :cond_3

    .line 1640
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1643
    :cond_6
    :goto_2
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    neg-int v3, v3

    if-gt v0, v3, :cond_9

    .line 1644
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1645
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->incrementSelectorIndices([I)V

    .line 1646
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    .line 1647
    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p2, :cond_7

    .line 1648
    aget p2, p1, v1

    invoke-direct {p0, p2, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1649
    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    goto :goto_3

    .line 1650
    :cond_7
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    if-eq p2, v2, :cond_8

    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz p2, :cond_8

    .line 1651
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1653
    :cond_8
    :goto_3
    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_6

    aget p2, p1, v1

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt p2, v0, :cond_6

    .line 1654
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public setAmPm()V
    .locals 3

    const/4 v0, 0x1

    .line 803
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    .line 804
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 805
    sget v1, Landroidx/picker/R$dimen;->sesl_time_picker_spinner_am_pm_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    .line 806
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 807
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 809
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextModeEnabled(Z)V

    return-void
.end method

.method public setCustomIntervalValue(I)V
    .locals 0

    .line 899
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    return-void
.end method

.method public setDateUnit(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 780
    :pswitch_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/picker/R$string;->sesl_date_picker_year:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/picker/R$string;->sesl_date_picker_month:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    goto :goto_0

    .line 774
    :pswitch_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/picker/R$string;->sesl_date_picker_day:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 783
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 2059
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2062
    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2065
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 2068
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 2070
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2071
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2072
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 3

    .line 839
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    .line 843
    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 845
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 846
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 847
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_1

    .line 848
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 849
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 850
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 851
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    .line 852
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 853
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 856
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/high16 v1, 0x40000

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 857
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 858
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 859
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 860
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 862
    invoke-virtual {p1, v0, v1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 867
    :cond_2
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomWheelIntervalMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    rem-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 869
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->applyWheelCustomInterval(Z)V

    .line 872
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 873
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 875
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 876
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 878
    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 879
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 881
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 882
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 884
    :cond_7
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColorIdle:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    .line 885
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    .line 886
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 887
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    :cond_8
    :goto_0
    const/4 p1, -0x1

    .line 889
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 891
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 892
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    if-eqz p1, :cond_9

    .line 893
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget-boolean p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {p1, v0, p0}, Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Landroidx/picker/widget/SeslNumberPicker;Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public setEditTextModeEnabled(Z)V
    .locals 2

    .line 814
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 819
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 822
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 823
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1596
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 1598
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz p1, :cond_0

    .line 1599
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    const/4 p1, 0x0

    .line 1600
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method public setErrorToastMessage(Ljava/lang/String;)V
    .locals 1

    .line 2077
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2080
    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    return-void
.end method

.method public setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V
    .locals 1

    .line 1717
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1720
    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$Formatter;

    .line 1721
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1722
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 3

    .line 3705
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    .line 3706
    aget-object v0, v0, v1

    .line 3707
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 3708
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/text/InputFilter;

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    .line 2017
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2023
    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    .line 2024
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    add-int/2addr v0, p1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    .line 2027
    :cond_1
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 2028
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ge p1, v0, :cond_2

    .line 2029
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 2031
    :cond_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    .line 2032
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2033
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2034
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 2035
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 2021
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 2

    .line 1975
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1981
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWheelInterval:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    rem-int v0, p1, v0

    if-eqz v0, :cond_1

    return-void

    .line 1984
    :cond_1
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    .line 1985
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-le p1, v0, :cond_2

    .line 1986
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 1988
    :cond_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    .line 1989
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1990
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1991
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1992
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1979
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMonthInputMode()V
    .locals 2

    .line 3726
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3727
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3728
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0

    .line 1701
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnScrollListener(Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;)V
    .locals 0

    .line 1691
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnScrollListener:Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1681
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1

    .line 2185
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2186
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2187
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setPaintFlags(I)V

    .line 2188
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    :cond_0
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 792
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 793
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 0

    return-void
.end method

.method public setSubTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x1

    .line 2123
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 2124
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 2125
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2126
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    .line 2127
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    .line 2128
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 2085
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    .line 2086
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2085
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    .line 2087
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2088
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2089
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x1

    .line 2107
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 2108
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 2109
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    .line 2110
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2111
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    .line 2112
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    .line 2113
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 1755
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_1
    const/4 v0, 0x0

    .line 1759
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1922
    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    .line 1923
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    return-void
.end method

.method public setYearDateTimeInputMode()V
    .locals 2

    .line 3737
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3738
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3739
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
    .locals 1

    .line 2200
    iput-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    .line 2202
    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p2, :cond_0

    return-void

    .line 2206
    :cond_0
    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p2

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v0

    sub-int/2addr p2, v0

    if-nez p2, :cond_2

    .line 2207
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/util/SeslAnimationListener;

    if-eqz p0, :cond_1

    .line 2208
    invoke-interface {p0}, Landroidx/picker/util/SeslAnimationListener;->onAnimationEnd()V

    :cond_1
    return-void

    .line 2213
    :cond_2
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2214
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2216
    :cond_3
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2217
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2219
    :cond_4
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2220
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2222
    :cond_5
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2223
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mColorOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2227
    :cond_6
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    new-instance v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    invoke-direct {v0, p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
