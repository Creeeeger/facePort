.class Landroidx/constraintlayout/motion/widget/TouchResponse;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mDragScale:F

.field private mDragStarted:Z

.field private mFlags:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private fill(Landroid/content/res/TypedArray;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    goto/16 :goto_1

    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v7, v6, v3

    aget v5, v7, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    aget-object v3, v6, v3

    aget v3, v3, v4

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    goto/16 :goto_1

    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v7, v6, v3

    aget v5, v7, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    aget-object v3, v6, v3

    aget v3, v3, v4

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    goto :goto_1

    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    goto :goto_1

    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v2, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    goto :goto_1

    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v2, v3, :cond_5

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    goto :goto_1

    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v2, v3, :cond_6

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    goto :goto_1

    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v2, v3, :cond_7

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    goto :goto_1

    :cond_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v2, v3, :cond_8

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    goto :goto_1

    :cond_8
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    goto :goto_1

    :cond_9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v2, v3, :cond_a

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    :cond_a
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fill(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method dot(FF)F
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAnchorId()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    return v0
.end method

.method getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method getLimitBoundsToId()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    return v0
.end method

.method getMaxAcceleration()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    return v0
.end method

.method public getMaxVelocity()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    return v0
.end method

.method getProgressDirection(FF)F
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const v4, 0x33d6bf95    # 1.0E-7f

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v5, 0x0

    aget v6, v3, v5

    cmpl-float v2, v6, v2

    if-nez v2, :cond_0

    aput v4, v3, v5

    :cond_0
    mul-float/2addr v1, p1

    aget v2, v3, v5

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v3, 0x1

    aget v5, v1, v3

    cmpl-float v2, v5, v2

    if-nez v2, :cond_2

    aput v4, v1, v3

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v2, p2

    aget v1, v1, v3

    div-float v1, v2, v1

    :goto_0
    return v1
.end method

.method getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method getTouchRegionId()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    return v0
.end method

.method processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    sub-float/2addr v3, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    sub-float/2addr v10, v11

    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v11, v10

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x41200000    # 10.0f

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_0

    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-eqz v12, :cond_b

    :cond_0
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-nez v13, :cond_1

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_1
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v14, v4, :cond_2

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move/from16 v17, v15

    move v15, v12

    move/from16 v16, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v13, v4

    aput v13, v5, v8

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v13, v4

    aput v13, v5, v9

    :goto_0
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v13, v5, v9

    mul-float/2addr v4, v13

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v5, v5, v8

    mul-float/2addr v13, v5

    add-float/2addr v4, v13

    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v13, v5

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v13, v15

    if-gez v5, :cond_3

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v13, 0x3c23d70a    # 0.01f

    aput v13, v5, v9

    aput v13, v5, v8

    :cond_3
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v5, v5, v9

    div-float v5, v10, v5

    goto :goto_1

    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v5, v5, v8

    div-float v5, v3, v5

    :goto_1
    add-float v13, v12, v5

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    cmpl-float v12, v6, v12

    if-eqz v12, :cond_6

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/16 v12, 0x3e8

    invoke-interface {v1, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v12

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v13

    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v7, v14, v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v7, v7, v9

    div-float v7, v12, v7

    goto :goto_2

    :cond_5
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v7, v7, v8

    div-float v7, v13, v7

    :goto_2
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v7, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_3

    :cond_6
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v7, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    goto/16 :goto_6

    :pswitch_1
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v3

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v5

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v10

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v12, v4, :cond_7

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v13, v10

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_4

    :cond_7
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v4

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v12, v4

    aput v12, v11, v8

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v12, v4

    aput v12, v11, v9

    :goto_4
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v12, v11, v9

    mul-float/2addr v12, v4

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v14, v11, v8

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    aget v4, v11, v9

    div-float v4, v3, v4

    goto :goto_5

    :cond_8
    aget v4, v11, v8

    div-float v4, v5, v4

    :goto_5
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    const/high16 v8, 0x40400000    # 3.0f

    div-float v8, v4, v8

    add-float/2addr v10, v8

    :cond_9
    cmpl-float v8, v10, v7

    if-eqz v8, :cond_b

    cmpl-float v8, v10, v6

    if-eqz v8, :cond_b

    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_b

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v13, v10

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v13, v15

    if-gez v11, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {v9, v8, v6, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    goto :goto_6

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    nop

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method scrollMove(FF)V
    .locals 11

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v8, 0x1

    if-nez v2, :cond_0

    iput-boolean v8, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    mul-float/2addr v2, v5

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v3, v3, v8

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v5, v9

    if-gez v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v5, 0x3c23d70a    # 0.01f

    aput v5, v3, v4

    aput v5, v3, v8

    :cond_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_2

    mul-float/2addr v3, p1

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v6, v4

    div-float/2addr v3, v4

    goto :goto_0

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v3, p2

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v4, v8

    div-float/2addr v3, v4

    :goto_0
    add-float v4, v1, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_3
    return-void
.end method

.method scrollUp(FF)V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v3, v0

    mul-float/2addr v4, v2

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    const/4 v6, 0x1

    aget v7, v3, v6

    mul-float/2addr v7, v5

    add-float/2addr v4, v7

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_0

    mul-float/2addr v2, p1

    aget v3, v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    mul-float/2addr v5, p2

    aget v2, v3, v6

    div-float v2, v5, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v2, v3

    add-float/2addr v1, v3

    :cond_1
    cmpl-float v3, v1, v7

    if-eqz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    iget v8, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    move v0, v6

    :cond_3
    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v5, v1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v5, v9

    if-gez v5, :cond_4

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    invoke-virtual {v0, v8, v7, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    :cond_5
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    return-void
.end method

.method setDown(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    return-void
.end method

.method public setMaxAcceleration(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    return-void
.end method

.method public setMaxVelocity(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    return-void
.end method

.method public setRTL(Z)V
    .locals 8

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v1, v6, v1

    aput-object v1, v6, v2

    aget-object v1, v6, v5

    aput-object v1, v6, v4

    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v2, v1, v5

    aput-object v2, v1, v4

    aget-object v2, v1, v3

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v7, v6, v5

    aput-object v7, v6, v2

    aget-object v1, v6, v1

    aput-object v1, v6, v4

    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v2, v1, v3

    aput-object v2, v1, v4

    aget-object v2, v1, v5

    aput-object v2, v1, v0

    :goto_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    aget-object v2, v0, v1

    const/4 v4, 0x0

    aget v2, v2, v4

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    aget-object v0, v0, v1

    aget v0, v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    sget-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    aget-object v2, v0, v1

    aget v2, v2, v4

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    aget-object v0, v0, v1

    aget v0, v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    return-void
.end method

.method public setTouchAnchorLocation(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    return-void
.end method

.method setUpTouchEvent(FF)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    return-void
.end method

.method setupTouch()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "TouchResponse"

    const-string v2, " cannot find view to handle touch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    new-instance v2, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
