.class public final Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mConstraintID:I

.field public final mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final mMaxHeight:F

.field public final mMaxWidth:F

.field public final mMinHeight:F

.field public final mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 16
    .line 17
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ge v1, v0, :cond_6

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 41
    .line 42
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    const-string v4, "layout"

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 72
    .line 73
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 77
    .line 78
    invoke-virtual {v3, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    const/4 v3, 0x1

    .line 83
    if-ne v2, v3, :cond_1

    .line 84
    .line 85
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    .line 86
    .line 87
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 v3, 0x2

    .line 95
    if-ne v2, v3, :cond_2

    .line 96
    .line 97
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    .line 98
    .line 99
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v3, 0x3

    .line 107
    if-ne v2, v3, :cond_3

    .line 108
    .line 109
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    .line 110
    .line 111
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const/4 v3, 0x4

    .line 119
    if-ne v2, v3, :cond_4

    .line 120
    .line 121
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    .line 122
    .line 123
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const-string v2, "ConstraintLayoutStates"

    .line 131
    .line 132
    const-string v3, "Unknown tag"

    .line 133
    .line 134
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .line 142
    .line 143
    return-void
.end method


# virtual methods
.method public final match(FF)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    cmpg-float v0, p1, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    cmpg-float v0, p2, v0

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    cmpl-float p1, p1, v0

    .line 37
    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    .line 42
    .line 43
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    cmpl-float p0, p2, p0

    .line 50
    .line 51
    if-lez p0, :cond_3

    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    const/4 p0, 0x1

    .line 55
    return p0
.end method
