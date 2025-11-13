.class public Landroidx/constraintlayout/widget/Constraints;
.super Landroid/view/ViewGroup;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-string p1, "Constraints"

    const-string p2, " ################# init"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    const-string p1, "Constraints"

    const-string p2, " ################# init"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    const/4 v3, 0x0

    .line 5
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 6
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 7
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 8
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 9
    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 10
    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 11
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 12
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 13
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 14
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 15
    iput v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 16
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    :goto_0
    if-ge v2, p1, :cond_c

    .line 18
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    .line 19
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x1c

    if-ne v1, v3, :cond_1

    .line 20
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x17

    if-ne v1, v3, :cond_2

    .line 22
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x18

    if-ne v1, v3, :cond_3

    .line 23
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x16

    if-ne v1, v3, :cond_4

    .line 24
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    goto :goto_1

    :cond_4
    const/16 v3, 0x14

    if-ne v1, v3, :cond_5

    .line 25
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    goto :goto_1

    :cond_5
    const/16 v3, 0x15

    if-ne v1, v3, :cond_6

    .line 26
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    goto :goto_1

    :cond_6
    const/16 v3, 0x10

    if-ne v1, v3, :cond_7

    .line 27
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    goto :goto_1

    :cond_7
    const/16 v3, 0x11

    if-ne v1, v3, :cond_8

    .line 28
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    goto :goto_1

    :cond_8
    const/16 v3, 0x12

    if-ne v1, v3, :cond_9

    .line 29
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    goto :goto_1

    :cond_9
    const/16 v3, 0x13

    if-ne v1, v3, :cond_a

    .line 30
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    goto :goto_1

    :cond_a
    const/16 v3, 0x1b

    if-ne v1, v3, :cond_b

    .line 31
    iget v3, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    invoke-virtual {p0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    :cond_b
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 32
    :cond_c
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 33
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    const/4 v6, -0x1

    .line 48
    if-eq v5, v6, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    :goto_1
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 78
    .line 79
    invoke-direct {v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 96
    .line 97
    if-nez v6, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    instance-of v7, v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 101
    .line 102
    if-eqz v7, :cond_5

    .line 103
    .line 104
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 105
    .line 106
    invoke-virtual {v6, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    instance-of v7, v3, Landroidx/constraintlayout/widget/Barrier;

    .line 110
    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 114
    .line 115
    const/4 v8, 0x1

    .line 116
    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 117
    .line 118
    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 125
    .line 126
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iput-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iput v3, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 137
    .line 138
    :cond_5
    invoke-virtual {v6, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/Constraints;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 145
    .line 146
    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method
