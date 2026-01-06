.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    const/4 v2, 0x2

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return v0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return v0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return v0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return v0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return v0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return v0
.end method

.method private createAlignedConstraints(Z)V
    .locals 14

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v2, :cond_8

    move v7, v5

    if-eqz p1, :cond_2

    sub-int v8, v2, v5

    add-int/lit8 v7, v8, -0x1

    :cond_2
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-ne v9, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_4
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_5

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_5
    if-lez v5, :cond_6

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_6
    move-object v4, v8

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_e

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v5

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_9

    goto :goto_4

    :cond_9
    if-nez v5, :cond_a

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_a
    add-int/lit8 v8, v0, -0x1

    if-ne v5, v8, :cond_b

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_b
    if-lez v5, :cond_c

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v8, v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_c
    move-object v4, v7

    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_15

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v0, :cond_14

    mul-int v8, v7, v2

    add-int/2addr v8, v5

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    if-ne v9, v3, :cond_f

    mul-int v9, v5, v0

    add-int v8, v9, v7

    :cond_f
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v10, v9

    if-lt v8, v10, :cond_10

    goto :goto_7

    :cond_10
    aget-object v9, v9, v8

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_11

    goto :goto_7

    :cond_11
    iget-object v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v10, v10, v5

    iget-object v11, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v7

    if-eq v9, v10, :cond_12

    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_12
    if-eq v9, v11, :cond_13

    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_13
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_15
    return-void

    :cond_16
    :goto_8
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0
.end method

.method private measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v3, :cond_4

    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v7, :cond_8

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_3

    if-lez v9, :cond_0

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v10

    :cond_0
    aget-object v10, v1, v9

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    if-le v8, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    goto :goto_5

    :cond_4
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v6, :cond_8

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_8

    if-lez v9, :cond_5

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v10

    :cond_5
    aget-object v10, v1, v9

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    if-le v8, v4, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_9

    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    :cond_9
    const/4 v8, 0x1

    if-nez v6, :cond_a

    if-eq v3, v8, :cond_b

    :cond_a
    if-nez v7, :cond_c

    if-nez v3, :cond_c

    :cond_b
    const/4 v5, 0x1

    :cond_c
    :goto_6
    const/4 v9, 0x0

    if-nez v5, :cond_26

    if-nez v3, :cond_d

    int-to-float v10, v2

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_7

    :cond_d
    int-to-float v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    :goto_7
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_f

    array-length v12, v10

    if-ge v12, v7, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    :goto_8
    new-array v10, v7, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_9
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_11

    array-length v12, v10

    if-ge v12, v6, :cond_10

    goto :goto_a

    :cond_10
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    :goto_a
    new-array v10, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_b
    const/4 v10, 0x0

    :goto_c
    if-ge v10, v7, :cond_1a

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v6, :cond_19

    mul-int v12, v11, v7

    add-int/2addr v12, v10

    if-ne v3, v8, :cond_12

    mul-int v13, v10, v6

    add-int v12, v13, v11

    :cond_12
    array-length v13, v1

    if-lt v12, v13, :cond_13

    goto :goto_e

    :cond_13
    aget-object v13, v1, v12

    if-nez v13, :cond_14

    goto :goto_e

    :cond_14
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v14

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v16, v15, v10

    if-eqz v16, :cond_15

    aget-object v15, v15, v10

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_16

    :cond_15
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v13, v15, v10

    :cond_16
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v15

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v17, v8, v11

    if-eqz v17, :cond_17

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ge v8, v15, :cond_18

    :cond_17
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v13, v8, v11

    :cond_18
    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_d

    :cond_19
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_c

    :cond_1a
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v7, :cond_1d

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v10

    if-eqz v11, :cond_1c

    if-lez v10, :cond_1b

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v12

    :cond_1b
    invoke-direct {v0, v11, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v8, v12

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1d
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v6, :cond_20

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v11

    if-eqz v12, :cond_1f

    if-lez v11, :cond_1e

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v10, v13

    :cond_1e
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v10, v13

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_20
    aput v8, p5, v9

    const/4 v9, 0x1

    aput v10, p5, v9

    if-nez v3, :cond_23

    if-le v8, v4, :cond_22

    if-le v7, v9, :cond_21

    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    :cond_21
    const/4 v5, 0x1

    goto :goto_11

    :cond_22
    const/4 v5, 0x1

    goto :goto_11

    :cond_23
    if-le v10, v4, :cond_25

    const/4 v9, 0x1

    if-le v6, v9, :cond_24

    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    :cond_24
    const/4 v5, 0x1

    goto :goto_11

    :cond_25
    const/4 v5, 0x1

    :goto_11
    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_26
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v8, v9

    const/4 v9, 0x1

    aput v6, v8, v9

    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 32

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    if-nez p3, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v10, v0

    move v11, v3

    :goto_0
    if-ge v11, v9, :cond_6

    aget-object v12, p1, v11

    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v14, v1

    goto :goto_1

    :cond_1
    move v14, v1

    :goto_1
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v13

    if-le v0, v15, :cond_2

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    move/from16 v0, v22

    goto :goto_2

    :cond_2
    move/from16 v0, v21

    :goto_2
    if-nez v0, :cond_3

    if-lez v11, :cond_3

    iget v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_3

    rem-int v1, v11, v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_3

    :cond_3
    move/from16 v16, v0

    :goto_3
    if-eqz v16, :cond_4

    move/from16 v17, v13

    new-instance v18, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move/from16 v2, v17

    goto :goto_4

    :cond_4
    if-lez v11, :cond_5

    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v13

    add-int/2addr v2, v0

    goto :goto_4

    :cond_5
    move v0, v13

    move v2, v0

    :goto_4
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_0

    :cond_6
    move-object v0, v10

    goto/16 :goto_a

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v10, v0

    move v11, v3

    :goto_5
    if-ge v11, v9, :cond_d

    aget-object v12, p1, v11

    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    move v14, v1

    goto :goto_6

    :cond_8
    move v14, v1

    :goto_6
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v13

    if-le v0, v15, :cond_9

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_9

    move/from16 v0, v22

    goto :goto_7

    :cond_9
    move/from16 v0, v21

    :goto_7
    if-nez v0, :cond_a

    if-lez v11, :cond_a

    iget v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_a

    rem-int v1, v11, v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_8

    :cond_a
    move/from16 v16, v0

    :goto_8
    if-eqz v16, :cond_b

    move/from16 v17, v13

    new-instance v18, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move/from16 v2, v17

    goto :goto_9

    :cond_b
    if-lez v11, :cond_c

    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v13

    add-int/2addr v2, v0

    goto :goto_9

    :cond_c
    move v0, v13

    move v2, v0

    :goto_9
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_5

    :cond_d
    move-object v0, v10

    :goto_a
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    nop

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    move-object/from16 v16, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v0, v21

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v0, v22

    :goto_c
    if-lez v1, :cond_12

    if-eqz v0, :cond_12

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_11

    move/from16 v24, v0

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    if-nez p3, :cond_10

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v17

    move/from16 v25, v1

    sub-int v1, v15, v17

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_e

    :cond_10
    move/from16 v25, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    sub-int v1, v15, v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    goto :goto_d

    :cond_11
    move/from16 v24, v0

    move/from16 v25, v1

    goto :goto_f

    :cond_12
    move/from16 v24, v0

    move/from16 v25, v1

    :goto_f
    const/4 v0, 0x0

    move v1, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v3, v16

    move/from16 v31, v14

    move v14, v13

    move/from16 v13, v31

    :goto_10
    if-ge v0, v2, :cond_18

    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v28, v10

    check-cast v28, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    if-nez p3, :cond_15

    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_13

    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v11

    iget-object v6, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v10, 0x0

    move/from16 v27, v10

    goto :goto_11

    :cond_13
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    move/from16 v27, v10

    :goto_11
    invoke-static/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v10, v28

    move/from16 v11, p3

    move-object/from16 v29, v12

    move-object v12, v3

    move v9, v13

    move-object v13, v4

    move-object/from16 v30, v4

    move v4, v14

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    move-object/from16 v10, v29

    const/4 v1, 0x0

    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v11

    add-int v13, v9, v11

    if-lez v0, :cond_14

    iget v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v13, v9

    :cond_14
    move v14, v4

    move-object v4, v10

    goto/16 :goto_13

    :cond_15
    move-object/from16 v30, v4

    move v9, v13

    move v4, v14

    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_16

    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v11

    iget-object v5, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v10, 0x0

    move/from16 v26, v10

    goto :goto_12

    :cond_16
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    move/from16 v26, v10

    :goto_12
    invoke-static/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v10, v28

    move/from16 v11, p3

    move-object v12, v3

    move-object/from16 v13, v30

    move-object v14, v5

    move-object/from16 v29, v15

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    move-object/from16 v3, v29

    const/4 v7, 0x0

    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    add-int v14, v4, v10

    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v0, :cond_17

    iget v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v14, v9

    move v13, v4

    move-object/from16 v4, v30

    goto :goto_13

    :cond_17
    move v13, v4

    move-object/from16 v4, v30

    :goto_13
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move/from16 v15, p4

    goto/16 :goto_10

    :cond_18
    move-object/from16 v30, v4

    move v9, v13

    move v4, v14

    aput v4, p5, v21

    aput v9, p5, v22

    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 23

    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    new-instance v12, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->clear()V

    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v21

    move-object v12, v0

    move/from16 v13, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v22, p4

    invoke-virtual/range {v12 .. v22}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v1

    aput v1, p5, v11

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aput v1, p5, v2

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    invoke-virtual {v5, v0, v4, v6}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public measure(IIII)V
    .locals 23

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    return-void

    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v17

    const/4 v0, 0x2

    new-array v5, v0, [I

    sub-int v0, v8, v14

    sub-int/2addr v0, v15

    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    sub-int v2, v10, v16

    sub-int v0, v2, v17

    move/from16 v18, v0

    goto :goto_0

    :cond_1
    move/from16 v18, v0

    :goto_0
    const/4 v0, -0x1

    if-nez v1, :cond_3

    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v0, :cond_2

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    :cond_2
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v0, :cond_5

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_1

    :cond_3
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v0, :cond_4

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    :cond_4
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v0, :cond_5

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    :cond_5
    :goto_1
    iget-object v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v19, v1

    :goto_2
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/16 v3, 0x8

    if-ge v2, v1, :cond_7

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_6

    add-int/lit8 v19, v19, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v19, :cond_a

    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    sub-int v2, v2, v19

    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-ge v4, v11, :cond_9

    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v4

    move/from16 v21, v1

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_8

    aput-object v11, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v21

    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    move/from16 v21, v1

    move v1, v2

    move-object v11, v0

    move v4, v1

    goto :goto_4

    :cond_a
    move/from16 v21, v1

    move-object v11, v0

    move/from16 v4, v21

    :goto_4
    iput-object v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput v4, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    packed-switch v0, :pswitch_data_0

    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    goto :goto_5

    :pswitch_0
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v4

    move/from16 v21, v4

    const/16 v20, 0x1

    move/from16 v4, v18

    move-object/from16 v22, v5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_5

    :pswitch_1
    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v21

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_5

    :pswitch_2
    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v21

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    :goto_5
    const/4 v0, 0x0

    aget v1, v22, v0

    add-int/2addr v1, v14

    add-int/2addr v1, v15

    aget v2, v22, v20

    add-int v2, v2, v16

    add-int v2, v2, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v7, v12, :cond_b

    move/from16 v3, p2

    goto :goto_6

    :cond_b
    if-ne v7, v5, :cond_c

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_c
    if-nez v7, :cond_d

    move v3, v1

    :cond_d
    :goto_6
    if-ne v9, v12, :cond_e

    move/from16 v4, p4

    goto :goto_7

    :cond_e
    if-ne v9, v5, :cond_f

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_7

    :cond_f
    if-nez v9, :cond_10

    move v4, v2

    :cond_10
    :goto_7
    invoke-virtual {v6, v3, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->setWidth(I)V

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->setHeight(I)V

    iget v5, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v5, :cond_11

    move/from16 v0, v20

    :cond_11
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return-void
.end method

.method public setWrapMode(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    return-void
.end method
