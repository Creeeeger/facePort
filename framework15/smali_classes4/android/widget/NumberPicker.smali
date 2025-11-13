.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$TwoDigitFormatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_LAYOUT_RESOURCE_ID:I = 0x10900ee

.field private static final greylist-max-o DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final greylist-max-o DIGIT_CHARACTERS:[C

.field private static final greylist-max-o SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final greylist-max-o SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final greylist SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final greylist SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final greylist-max-o SIZE_UNSPECIFIED:I = -0x1

.field private static final greylist-max-o SNAP_SCROLL_DURATION:I = 0x12c

.field private static final greylist-max-o TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final greylist-max-o UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final greylist-max-o UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final greylist-max-o sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private greylist-max-o mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final greylist-max-o mAdjustScroller:Landroid/widget/Scroller;

.field private greylist-max-o mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private greylist-max-o mBottomSelectionDividerBottom:I

.field private greylist-max-o mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final greylist-max-o mComputeMaxWidth:Z

.field private greylist-max-o mCurrentScrollOffset:I

.field private final greylist-max-o mDecrementButton:Landroid/widget/ImageButton;

.field private greylist-max-o mDecrementVirtualButtonPressed:Z

.field private greylist-max-o mDisplayedValues:[Ljava/lang/String;

.field private final greylist-max-r mFlingScroller:Landroid/widget/Scroller;

.field private greylist-max-o mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final greylist-max-o mHasSelectorWheel:Z

.field private greylist-max-o mHideWheelUntilFocused:Z

.field private greylist-max-o mIgnoreMoveEvents:Z

.field private final greylist-max-o mIncrementButton:Landroid/widget/ImageButton;

.field private greylist-max-o mIncrementVirtualButtonPressed:Z

.field private greylist-max-o mInitialScrollOffset:I

.field private final greylist mInputText:Landroid/widget/EditText;

.field private greylist-max-o mLastDownEventTime:J

.field private greylist-max-o mLastDownEventY:F

.field private greylist-max-o mLastDownOrMoveEventY:F

.field private greylist-max-o mLastHandledDownDpadKeyCode:I

.field private greylist-max-o mLastHoveredChildVirtualViewId:I

.field private greylist-max-o mLongPressUpdateInterval:J

.field private final greylist-max-o mMaxHeight:I

.field private greylist-max-r mMaxValue:I

.field private greylist-max-o mMaxWidth:I

.field private greylist-max-r mMaximumFlingVelocity:I

.field private final greylist-max-r mMinHeight:I

.field private greylist-max-o mMinValue:I

.field private final greylist-max-r mMinWidth:I

.field private greylist-max-o mMinimumFlingVelocity:I

.field private greylist-max-o mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private greylist-max-r mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private greylist-max-o mPerformClickOnTap:Z

.field private final greylist-max-o mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private greylist-max-o mPreviousScrollerY:I

.field private greylist-max-o mScrollState:I

.field private final greylist-max-p mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-p mSelectionDividerHeight:I

.field private final greylist-max-o mSelectionDividersDistance:I

.field private greylist-max-o mSelectorElementHeight:I

.field private final greylist-max-o mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mSelectorIndices:[I

.field private greylist-max-o mSelectorTextGapHeight:I

.field private final greylist-max-p mSelectorWheelPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final greylist-max-o mSolidColor:I

.field private final greylist-max-r mTextSize:I

.field private greylist-max-o mTopSelectionDividerTop:I

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mValue:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private final greylist-max-o mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mWrapSelectorWheel:Z

.field private greylist-max-o mWrapSelectorWheelPreferred:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressUpdateInterval(Landroid/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetSelectionCommand(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .locals 0

    iget-object p0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Landroid/widget/NumberPicker;->mValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectedPos(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhideSoftInput(Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostSetSelectionCommand(Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateInputTextView(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDIGIT_CHARACTERS()[C
    .locals 1

    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

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
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 21

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, v7, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v7, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v9, 0x3

    new-array v0, v9, [I

    iput-object v0, v7, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v0, -0x80000000

    iput v0, v7, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v11, -0x1

    iput v11, v7, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    sget-object v0, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v12, v13, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v2, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v11, v6

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/NumberPicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const v0, 0x10900ee

    invoke-virtual {v11, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    iput-boolean v0, v7, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v0, 0x2

    invoke-virtual {v11, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    invoke-virtual {v11, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mSolidColor:I

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iput-object v3, v7, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v8, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v7, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v8, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0x9

    invoke-virtual {v11, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    const/4 v6, 0x6

    const/4 v9, -0x1

    invoke-virtual {v11, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mMinHeight:I

    const/4 v2, 0x4

    invoke-virtual {v11, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mMaxHeight:I

    iget v2, v7, Landroid/widget/NumberPicker;->mMinHeight:I

    if-eq v2, v9, :cond_3

    iget v2, v7, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-eq v2, v9, :cond_3

    iget v2, v7, Landroid/widget/NumberPicker;->mMinHeight:I

    iget v9, v7, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-gt v2, v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minHeight > maxHeight"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v2, 0x7

    const/4 v9, -0x1

    invoke-virtual {v11, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mMinWidth:I

    const/4 v2, 0x5

    invoke-virtual {v11, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mMaxWidth:I

    iget v2, v7, Landroid/widget/NumberPicker;->mMinWidth:I

    if-eq v2, v9, :cond_5

    iget v2, v7, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v2, v9, :cond_5

    iget v2, v7, Landroid/widget/NumberPicker;->mMinWidth:I

    iget v9, v7, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-gt v2, v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minWidth > maxWidth"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget v2, v7, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_6

    move v2, v8

    goto :goto_3

    :cond_6
    move v2, v10

    :goto_3
    iput-boolean v2, v7, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    const/16 v2, 0xa

    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v2, v7}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v2, v7, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    iget-boolean v2, v7, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v2, v8

    invoke-virtual {v7, v2}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v9, "layout_inflater"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v9, Landroid/widget/NumberPicker$1;

    invoke-direct {v9, v7}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    new-instance v6, Landroid/widget/NumberPicker$2;

    invoke-direct {v6, v7}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    iget-boolean v0, v7, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v10, 0x0

    if-nez v0, :cond_7

    const v0, 0x102036f

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v7, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    iget-object v0, v7, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    :cond_7
    iput-object v10, v7, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    :goto_4
    iget-boolean v0, v7, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    const v0, 0x10202b6

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v7, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    iget-object v0, v7, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    :cond_8
    iput-object v10, v7, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    :goto_5
    const v0, 0x102046a

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v0, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v10, Landroid/widget/NumberPicker$3;

    invoke-direct {v10, v7}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v10, v8, [Landroid/text/InputFilter;

    new-instance v8, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct {v8, v7}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    const/16 v20, 0x0

    aput-object v8, v10, v20

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v0, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, v7, Landroid/widget/NumberPicker;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    iput v8, v7, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    const/16 v10, 0x8

    div-int/2addr v8, v10

    iput v8, v7, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    iget-object v8, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getTextSize()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/NumberPicker;->mTextSize:I

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v10, v7, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v10, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v10, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object/from16 v17, v0

    sget-object v0, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    move/from16 v18, v1

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v8, v7, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/widget/Scroller;

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, v7, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, v7, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    goto :goto_6

    :cond_9
    const/4 v0, 0x1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getFocusable()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setFocusable(I)V

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    :cond_a
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$1400(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$1600(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic blacklist access$1700(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1800(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1900(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2000(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2100(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$2200(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2300(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2400(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2500(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$2600(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2700(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2800(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2900(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3000(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$3100(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3200(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic blacklist access$3300(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3400(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3500(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3600(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3700(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3800(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$4000(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4100(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4400(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4500(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method private greylist changeValueByOne(Z)V
    .locals 13

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v11, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private greylist-max-o decrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private greylist-max-o ensureCachedScrollSelectorValue(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v2, p1, v2

    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private greylist-max-o ensureScrollWheelAdjusted()Z
    .locals 7

    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    if-lez v0, :cond_0

    neg-int v1, v1

    :cond_0
    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method private greylist-max-o fling(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private greylist-max-o formatNumber(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getSelectedPos(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    :goto_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public static final greylist getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private greylist-max-o getWrappedSelectorIndex(I)I
    .locals 4

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private greylist-max-o hideSoftInput()V
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private greylist-max-o incrementSelectorIndices([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private greylist-max-o initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private greylist-max-o initializeSelectorWheel()V
    .locals 6

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v0

    iget v2, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v3, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    array-length v3, v0

    int-to-float v3, v3

    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    iget v4, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v4, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private greylist initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v4, v0, v2

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o makeMeasureSpec(II)I
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    return p1

    :sswitch_1
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :sswitch_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_1

    if-lez v3, :cond_0

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v5

    :cond_1
    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v1}, Landroid/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return v4
.end method

.method private greylist-max-o notifyChange(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private greylist-max-o onScrollStateChange(I)V
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private greylist-max-o onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o postBeginSoftInputOnLongPressCommand()V
    .locals 3

    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private greylist-max-o postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-$$Nest$msetStep(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private greylist-max-o postSetSelectionCommand(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->post(II)V

    return-void
.end method

.method private greylist-max-o removeAllCallbacks()V
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private greylist-max-o removeBeginSoftInputCommand()V
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private greylist-max-o removeChangeCurrentByOneFromLongPress()V
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private greylist-max-o resolveSizeAndStateRespectingMinSize(III)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method private greylist-max-o setValueInternal(IZ)V
    .locals 3

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    :cond_3
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private greylist-max-o showSoftInput()V
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private greylist-max-o tryComputeMaxWidth()V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    :cond_3
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v0, v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    iget v1, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    iput v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_4

    :cond_7
    iget v1, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    :goto_4
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    :cond_8
    return-void
.end method

.method private greylist-max-o updateInputTextView()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    invoke-virtual {v3, p0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    invoke-virtual {p0, p0, v3}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v2
.end method

.method private greylist-max-o updateWrapSelectorWheel()V
    .locals 4

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

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

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method

.method private greylist-max-o validateInputTextView(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist computeScroll()V
    .locals 4

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 2

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    nop

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v4, -0x1

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/16 v8, 0x80

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-virtual {v3, v1, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3, v1, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_3
    iget v9, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v9, v1, :cond_3

    iget v9, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v9, v4, :cond_3

    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {v3, v1, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_2

    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v2

    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v0, v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_4
    return v2

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public whitelist getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public blacklist getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxValue()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public whitelist getMinValue()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public whitelist getSelectionDividerHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method public whitelist getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method public whitelist getTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public whitelist getValue()I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public whitelist getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v3, p0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v7, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    iget v7, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v8, p0, Landroid/widget/NumberPicker;->mBottom:I

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    const/4 v6, 0x0

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_7

    aget v7, v5, v6

    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-ne v6, v1, :cond_5

    :cond_4
    if-ne v6, v1, :cond_6

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v7, v4, v1, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v7, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    iget v8, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v8, v7, v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v9, v4, v8, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v3

    :cond_7
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 10

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    add-int v6, v4, v2

    add-int v7, v5, v3

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v2, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    iget v3, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_4

    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v4, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_3

    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    :cond_3
    goto :goto_0

    :cond_4
    iget v4, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    :goto_0
    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    iget-object v3, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_5

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->fling(I)V

    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v5

    iget v8, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_6

    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    goto :goto_2

    :cond_6
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    sub-int/2addr v10, v2

    if-lez v10, :cond_7

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object v7, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_7
    if-gez v10, :cond_8

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object v11, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    :cond_8
    :goto_1
    goto :goto_2

    :cond_9
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    :goto_2
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    :goto_3
    iget-object v1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_4
    return v2

    :cond_a
    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist performClick()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performLongClick()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    :cond_1
    return v1
.end method

.method public whitelist scrollBy(II)V
    .locals 5

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-lez p2, :cond_0

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_0

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_1

    if-gez p2, :cond_1

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    :cond_2
    :goto_0
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v2, v4, :cond_3

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    aget v2, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_2

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_2

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_3
    :goto_1
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v4, v4

    if-ge v2, v4, :cond_4

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    aget v2, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_3

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_3

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    if-eq v1, v2, :cond_5

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Landroid/widget/NumberPicker;->onScrollChanged(IIII)V

    :cond_5
    return-void
.end method

.method public whitelist setDisplayedValues([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    :goto_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public whitelist setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public whitelist setMaxValue(I)V
    .locals 2

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMinValue(I)V
    .locals 2

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public whitelist setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public whitelist setSelectionDividerHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method public whitelist setTextColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method public whitelist setTextSize(F)V
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method public whitelist setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public whitelist setWrapSelectorWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
