.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

.field mLastMeasuredHeight:I

.field mLastMeasuredWidth:I

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private diff(FF)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x358637bd    # 1.0E-6f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method private static final xRotate(FFFFFF)F
    .locals 2

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float v0, p4, p1

    mul-float v1, p5, p0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private static final yRotate(FFFFFF)F
    .locals 2

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float v0, p4, p0

    mul-float v1, p5, p1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 7

    move-object v0, p0

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    aget-boolean v2, p2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v3, p4

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v3, p4

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    aget-boolean v2, p2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    return-void
.end method

.method fillStandard([D[I)V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget v3, p2, v2

    array-length v4, v0

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget v4, p2, v2

    aget v4, v0, v4

    float-to-double v4, v4

    aput-wide v4, p1, v1

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getCenter([I[D[FI)V
    .locals 9

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    aget-wide v7, p2, v6

    double-to-float v7, v7

    aget v8, p1, v6

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v3, v7

    goto :goto_1

    :pswitch_1
    move v2, v7

    goto :goto_1

    :pswitch_2
    move v1, v7

    goto :goto_1

    :pswitch_3
    move v0, v7

    nop

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v2, v6

    add-float/2addr v7, v0

    add-float/2addr v7, v4

    aput v7, p3, p4

    add-int/lit8 v7, p4, 0x1

    div-float v6, v3, v6

    add-float/2addr v6, v1

    add-float/2addr v6, v5

    aput v6, p3, v7

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    float-to-double v3, v1

    aput-wide v3, p2, p3

    return v2

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    new-array v2, v1, [F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, p3, 0x1

    aget v5, v2, v3

    float-to-double v5, v5

    aput-wide v5, p2, p3

    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    return v0
.end method

.method getRect([I[D[FI)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x7fc00000    # Float.NaN

    const/high16 v14, 0x7fc00000    # Float.NaN

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    :goto_0
    move/from16 v17, v6

    array-length v6, v1

    if-ge v0, v6, :cond_0

    move v6, v8

    move/from16 v18, v9

    aget-wide v8, p2, v0

    double-to-float v8, v8

    aget v9, v1, v0

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v5, v8

    goto :goto_1

    :pswitch_1
    move v4, v8

    goto :goto_1

    :pswitch_2
    move v3, v8

    goto :goto_1

    :pswitch_3
    move v2, v8

    goto :goto_1

    :pswitch_4
    move v9, v8

    move/from16 v17, v9

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v8, v6

    move/from16 v6, v17

    move/from16 v9, v18

    goto :goto_0

    :cond_0
    move v6, v8

    move/from16 v18, v9

    move v0, v2

    move v8, v3

    add-float v9, v2, v4

    move/from16 v19, v8

    move/from16 v20, v9

    add-float v21, v3, v5

    move/from16 v22, v0

    move/from16 v23, v21

    const/high16 v24, 0x40000000    # 2.0f

    div-float v25, v4, v24

    add-float v25, v0, v25

    div-float v26, v5, v24

    add-float v26, v8, v26

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v27

    if-nez v27, :cond_1

    sub-float v27, v9, v0

    mul-float v27, v27, v13

    add-float v25, v0, v27

    :cond_1
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v27

    if-nez v27, :cond_2

    sub-float v27, v21, v8

    mul-float v27, v27, v14

    add-float v26, v8, v27

    :cond_2
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v28, v11, v27

    if-eqz v28, :cond_3

    add-float v28, v0, v9

    div-float v28, v28, v24

    sub-float v29, v0, v28

    mul-float v29, v29, v11

    add-float v0, v29, v28

    sub-float v29, v9, v28

    mul-float v29, v29, v11

    add-float v9, v29, v28

    sub-float v29, v20, v28

    mul-float v29, v29, v11

    add-float v20, v29, v28

    sub-float v29, v22, v28

    mul-float v29, v29, v11

    add-float v22, v29, v28

    :cond_3
    cmpl-float v27, v12, v27

    if-eqz v27, :cond_4

    add-float v27, v8, v21

    div-float v27, v27, v24

    sub-float v24, v8, v27

    mul-float v24, v24, v12

    add-float v8, v24, v27

    sub-float v24, v19, v27

    mul-float v24, v24, v12

    add-float v19, v24, v27

    sub-float v24, v21, v27

    mul-float v24, v24, v12

    add-float v21, v24, v27

    sub-float v24, v23, v27

    mul-float v24, v24, v12

    add-float v23, v24, v27

    :cond_4
    const/16 v24, 0x0

    cmpl-float v24, v7, v24

    if-eqz v24, :cond_5

    move/from16 v24, v2

    float-to-double v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v33, v3

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v31, v0

    move/from16 v32, v8

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v3

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v34

    move/from16 v31, v9

    move/from16 v32, v19

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v35

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v36

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v37

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v38

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v39

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v27

    move v0, v3

    move/from16 v8, v34

    move/from16 v9, v35

    move/from16 v19, v36

    move/from16 v20, v37

    move/from16 v21, v38

    move/from16 v22, v39

    move/from16 v23, v27

    goto :goto_2

    :cond_5
    move/from16 v24, v2

    move/from16 v33, v3

    :goto_2
    add-float/2addr v0, v15

    add-float v8, v8, v16

    add-float/2addr v9, v15

    add-float v19, v19, v16

    add-float v20, v20, v15

    add-float v21, v21, v16

    add-float v22, v22, v15

    add-float v23, v23, v16

    add-int/lit8 v1, p4, 0x1

    aput v0, p3, p4

    add-int/lit8 v2, v1, 0x1

    aput v8, p3, v1

    add-int/lit8 v1, v2, 0x1

    aput v9, p3, v2

    add-int/lit8 v2, v1, 0x1

    aput v19, p3, v1

    add-int/lit8 v1, v2, 0x1

    aput v20, p3, v2

    add-int/lit8 v2, v1, 0x1

    aput v21, p3, v1

    add-int/lit8 v1, v2, 0x1

    aput v22, p3, v2

    add-int/lit8 v2, v1, 0x1

    aput v23, p3, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move-object/from16 v4, p0

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v8, v9

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    move v14, v3

    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v9, v16

    add-float v17, v15, v17

    move/from16 v18, v3

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v19, v12, v16

    add-float v19, v3, v19

    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v8, v8, v16

    add-float/2addr v6, v8

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v11, v11, v16

    add-float/2addr v8, v11

    sub-float v11, v6, v17

    sub-float v20, v8, v19

    mul-float v21, v11, v14

    add-float v15, v15, v21

    mul-float v21, v10, v5

    div-float v21, v21, v16

    sub-float v15, v15, v21

    float-to-int v15, v15

    int-to-float v15, v15

    iput v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v15, v20, v14

    add-float/2addr v3, v15

    mul-float v15, v13, v7

    div-float v15, v15, v16

    sub-float/2addr v3, v15

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v3, v10, v5

    add-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    mul-float v3, v13, v7

    add-float/2addr v12, v3

    float-to-int v3, v12

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move/from16 v3, v18

    goto :goto_2

    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_2
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    :goto_3
    iget v15, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_4

    move/from16 v15, v18

    goto :goto_4

    :cond_4
    iget v15, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_4
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    :goto_5
    const/4 v2, 0x2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v21, v11, v3

    add-float v2, v2, v21

    mul-float v21, v20, v12

    add-float v2, v2, v21

    mul-float v21, v10, v5

    div-float v21, v21, v16

    sub-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v21, v11, v9

    add-float v2, v2, v21

    mul-float v21, v20, v15

    add-float v2, v2, v21

    mul-float v21, v13, v7

    div-float v21, v21, v16

    sub-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move-object/from16 v4, p0

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v8, v9

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v9, v10

    iget v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_2
    iget v11, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v12, v13

    add-float/2addr v14, v11

    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move/from16 v16, v3

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float v17, v3, v13

    add-float v17, v15, v17

    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v1, v13

    add-float/2addr v6, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v0, v13

    add-float/2addr v1, v0

    sub-float v0, v6, v14

    sub-float v13, v1, v17

    mul-float v19, v0, v10

    add-float v11, v11, v19

    mul-float v19, v8, v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v19, v18

    sub-float v11, v11, v19

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v11, v13, v10

    add-float/2addr v15, v11

    mul-float v11, v9, v7

    div-float v11, v11, v18

    sub-float/2addr v15, v11

    float-to-int v11, v15

    int-to-float v11, v11

    iput v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v11, v8, v5

    add-float/2addr v12, v11

    float-to-int v11, v12

    int-to-float v11, v11

    iput v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    mul-float v11, v9, v7

    add-float/2addr v3, v11

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move-object/from16 v3, p1

    iget v11, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    iget v11, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_3
    neg-float v12, v13

    move v15, v0

    mul-float v19, v12, v11

    mul-float v20, v15, v11

    move/from16 v21, v1

    const/4 v1, 0x1

    iput v1, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v1, p2

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v22, v0, v10

    add-float v2, v2, v22

    mul-float v22, v8, v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v22, v22, v18

    sub-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    move/from16 v22, v0

    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v23, v13, v10

    add-float v0, v0, v23

    mul-float v23, v9, v7

    div-float v23, v23, v18

    sub-float v0, v0, v23

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float v2, v2, v19

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float v0, v0, v20

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v0

    iput-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget v0, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 22

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move-object/from16 v4, p0

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v8, v9

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    move v14, v3

    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v9, v16

    add-float v17, v15, v17

    move/from16 v18, v3

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v19, v12, v16

    add-float v19, v3, v19

    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v8, v8, v16

    add-float/2addr v1, v8

    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v11, v11, v16

    add-float/2addr v8, v11

    sub-float v11, v1, v17

    sub-float v20, v8, v19

    mul-float v21, v11, v14

    add-float v15, v15, v21

    mul-float v21, v10, v5

    div-float v21, v21, v16

    sub-float v15, v15, v21

    float-to-int v15, v15

    int-to-float v15, v15

    iput v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v15, v20, v14

    add-float/2addr v3, v15

    mul-float v15, v13, v7

    div-float v15, v15, v16

    sub-float/2addr v3, v15

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v3, v10, v5

    add-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    mul-float v3, v13, v7

    add-float/2addr v12, v3

    float-to-int v3, v12

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v3, 0x3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    move/from16 v3, p1

    int-to-float v9, v3

    iget v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v9, v12

    float-to-int v3, v9

    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v12, v3

    mul-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    goto :goto_2

    :cond_2
    move/from16 v3, p1

    :goto_2
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    move/from16 v9, p2

    int-to-float v12, v9

    iget v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v12, v15

    float-to-int v9, v12

    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v15, v9

    mul-float/2addr v12, v15

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    goto :goto_3

    :cond_3
    move/from16 v9, p2

    :goto_3
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v12}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v12

    iput-object v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method setBounds(FFFF)V
    .locals 2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    float-to-int v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    float-to-int v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .locals 21

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, " dd = "

    const/4 v11, 0x0

    :goto_0
    array-length v12, v0

    if-ge v11, v12, :cond_0

    aget-wide v12, p5, v11

    double-to-float v12, v12

    aget-wide v13, p6, v11

    double-to-float v13, v13

    aget v14, v0, v11

    packed-switch v14, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v4, v12

    goto :goto_1

    :pswitch_1
    move v3, v12

    goto :goto_1

    :pswitch_2
    move v2, v12

    goto :goto_1

    :pswitch_3
    move v1, v12

    goto :goto_1

    :pswitch_4
    nop

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    mul-float v11, v5, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v11, v1, v11

    mul-float v13, v6, v4

    div-float/2addr v13, v12

    sub-float v12, v2, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float v14, v5, v13

    mul-float/2addr v14, v3

    add-float v15, v6, v13

    mul-float/2addr v15, v4

    add-float v16, v11, v14

    add-float v17, v12, v15

    const/16 v18, 0x0

    sub-float v19, v13, p1

    mul-float v19, v19, v11

    mul-float v20, v16, p1

    add-float v19, v19, v20

    add-float v19, v19, v8

    aput v19, p3, v18

    sub-float v13, v13, p2

    mul-float/2addr v13, v12

    mul-float v18, v17, p2

    add-float v13, v13, v18

    add-float/2addr v13, v9

    const/16 v18, 0x1

    aput v13, p3, v18

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setView(Landroid/view/View;[I[D[D[D)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x7fc00000    # Float.NaN

    const/high16 v13, 0x7fc00000    # Float.NaN

    array-length v14, v2

    const/4 v15, 0x1

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v14, v14

    move/from16 v16, v3

    array-length v3, v2

    sub-int/2addr v3, v15

    aget v3, v2, v3

    if-gt v14, v3, :cond_1

    array-length v3, v2

    sub-int/2addr v3, v15

    aget v3, v2, v3

    add-int/2addr v3, v15

    new-array v14, v3, [D

    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v14, v3, [D

    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    goto :goto_0

    :cond_0
    move/from16 v16, v3

    :cond_1
    :goto_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    move v14, v4

    move/from16 v17, v5

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v5, v2, v3

    aget-wide v18, p3, v3

    aput-wide v18, v4, v5

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget v5, v2, v3

    aget-wide v18, p4, v3

    aput-wide v18, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v4, v14

    move/from16 v5, v17

    :goto_2
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v15, v14

    if-ge v3, v15, :cond_7

    aget-wide v14, v14, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    const-wide/16 v18, 0x0

    if-eqz v14, :cond_3

    if-eqz p5, :cond_6

    aget-wide v14, p5, v3

    cmpl-double v14, v14, v18

    if-nez v14, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p5, :cond_4

    aget-wide v18, p5, v3

    :cond_4
    move-wide/from16 v14, v18

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v18, v2, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5

    move-wide/from16 v20, v14

    goto :goto_3

    :cond_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v18, v2, v3

    add-double v18, v18, v14

    move-wide/from16 v20, v14

    move-wide/from16 v14, v18

    :goto_3
    double-to-float v2, v14

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v14, v14, v3

    double-to-float v14, v14

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    move v13, v2

    goto :goto_4

    :pswitch_1
    move v6, v2

    move v10, v14

    goto :goto_4

    :pswitch_2
    move v5, v2

    move v9, v14

    goto :goto_4

    :pswitch_3
    move v4, v2

    move v8, v14

    goto :goto_4

    :pswitch_4
    move v15, v2

    move v7, v14

    move/from16 v16, v15

    goto :goto_4

    :pswitch_5
    move v11, v2

    nop

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v12}, Landroid/view/View;->setRotation(F)V

    move/from16 v18, v7

    move v15, v8

    move/from16 v20, v9

    move/from16 v19, v10

    move/from16 v22, v11

    move/from16 v21, v12

    goto :goto_6

    :cond_8
    move/from16 v18, v7

    move v15, v8

    move/from16 v20, v9

    move/from16 v19, v10

    move/from16 v22, v11

    move/from16 v21, v12

    goto :goto_6

    :cond_9
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move v2, v12

    :goto_5
    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v9, v3

    add-float/2addr v14, v7

    div-float v3, v10, v3

    add-float/2addr v3, v8

    move/from16 v18, v7

    move v15, v8

    float-to-double v7, v2

    move/from16 v20, v9

    move/from16 v19, v10

    float-to-double v9, v13

    move/from16 v22, v11

    move/from16 v21, v12

    float-to-double v11, v3

    move/from16 v23, v2

    move/from16 v24, v3

    float-to-double v2, v14

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    add-double/2addr v9, v2

    add-double/2addr v7, v9

    double-to-float v2, v7

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :goto_6
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v16, v2

    float-to-int v3, v3

    add-float v7, v4, v2

    float-to-int v7, v7

    add-float v8, v16, v2

    add-float/2addr v8, v5

    float-to-int v8, v8

    add-float/2addr v2, v4

    add-float/2addr v2, v6

    float-to-int v2, v2

    sub-int v9, v8, v3

    sub-int v10, v2, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    if-ne v9, v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_b

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v11, 0x1

    :goto_8
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move/from16 v17, v4

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    if-ne v4, v14, :cond_d

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    if-eq v4, v12, :cond_e

    :cond_d
    const/4 v11, 0x1

    :cond_e
    if-eqz v11, :cond_f

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    invoke-virtual {v1, v14, v12}, Landroid/view/View;->measure(II)V

    :cond_f
    invoke-virtual {v1, v3, v7, v8, v2}, Landroid/view/View;->layout(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
