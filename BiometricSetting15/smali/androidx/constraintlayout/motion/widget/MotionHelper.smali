.class public Landroidx/constraintlayout/motion/widget/MotionHelper;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;


# instance fields
.field public mProgress:F

.field public mUseOnHide:Z

.field public mUseOnShow:Z

.field public views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 3
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 6
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 10
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 11
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mProgress:F

    .line 2
    .line 3
    return p0
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper:[I

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    if-nez v2, :cond_1

    .line 40
    .line 41
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 42
    .line 43
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 48
    .line 49
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionCompleted(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mProgress:F

    .line 2
    .line 3
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->views:[Landroid/view/View;

    .line 19
    .line 20
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 21
    .line 22
    if-ge v0, p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->views:[Landroid/view/View;

    .line 25
    .line 26
    aget-object p1, p1, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_1
    if-ge v0, p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    instance-of v1, v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method
