.class public final Landroidx/constraintlayout/motion/widget/MotionLayout$Model;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mEndId:I

.field public mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public mStart:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mStartId:I

.field public final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    .line 6
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 12
    .line 13
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 24
    .line 25
    return-void
.end method

.method public static copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_6

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    .line 35
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    new-instance v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 40
    .line 41
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    new-instance v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 50
    .line 51
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Flow;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    new-instance v3, Landroidx/constraintlayout/core/widgets/Flow;

    .line 60
    .line 61
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Placeholder;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    new-instance v3, Landroidx/constraintlayout/core/widgets/Placeholder;

    .line 70
    .line 71
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    new-instance v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 80
    .line 81
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    .line 87
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 96
    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 100
    .line 101
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 107
    .line 108
    .line 109
    :cond_5
    iput-object p1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 110
    .line 111
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 136
    .line 137
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    return-void
.end method

.method public static getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 22
    .line 23
    if-ne v3, p1, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final build()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    new-array v4, v2, [I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v6, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 29
    .line 30
    invoke-direct {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    aput v9, v4, v6

    .line 38
    .line 39
    invoke-virtual {v3, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v6, 0x0

    .line 51
    :goto_1
    if-ge v6, v2, :cond_10

    .line 52
    .line 53
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 64
    .line 65
    if-nez v9, :cond_1

    .line 66
    .line 67
    move/from16 v18, v2

    .line 68
    .line 69
    move-object/from16 v16, v3

    .line 70
    .line 71
    move-object/from16 v17, v4

    .line 72
    .line 73
    move/from16 v19, v6

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 78
    .line 79
    iget-object v11, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 80
    .line 81
    const-string v12, ")"

    .line 82
    .line 83
    const-string v13, " ("

    .line 84
    .line 85
    const-string v14, "no widget for  "

    .line 86
    .line 87
    const-string v15, "MotionLayout"

    .line 88
    .line 89
    if-eqz v10, :cond_b

    .line 90
    .line 91
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 92
    .line 93
    invoke-static {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-eqz v10, :cond_a

    .line 98
    .line 99
    invoke-static {v1, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    move-object/from16 v16, v3

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    move-object/from16 v17, v4

    .line 116
    .line 117
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 118
    .line 119
    move/from16 v18, v2

    .line 120
    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-static {v10, v2, v4, v7, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 126
    .line 127
    .line 128
    :cond_2
    const/4 v2, 0x0

    .line 129
    iput v2, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 130
    .line 131
    iput v2, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 132
    .line 133
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 134
    .line 135
    .line 136
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    int-to-float v2, v2

    .line 139
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    int-to-float v3, v3

    .line 142
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    int-to-float v7, v7

    .line 147
    move/from16 v19, v6

    .line 148
    .line 149
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    int-to-float v6, v6

    .line 154
    invoke-virtual {v11, v2, v3, v7, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 155
    .line 156
    .line 157
    iget v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 158
    .line 159
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 164
    .line 165
    .line 166
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 167
    .line 168
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 169
    .line 170
    iput v6, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 171
    .line 172
    iget-object v6, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 173
    .line 174
    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 175
    .line 176
    invoke-virtual {v6, v10, v5, v4, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 177
    .line 178
    .line 179
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 180
    .line 181
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 182
    .line 183
    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 184
    .line 185
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 186
    .line 187
    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 188
    .line 189
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 190
    .line 191
    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 192
    .line 193
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 200
    .line 201
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 202
    .line 203
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 204
    .line 205
    const/4 v6, -0x2

    .line 206
    if-eq v4, v6, :cond_9

    .line 207
    .line 208
    const/4 v6, -0x1

    .line 209
    if-eq v4, v6, :cond_8

    .line 210
    .line 211
    if-eqz v4, :cond_7

    .line 212
    .line 213
    const/4 v2, 0x1

    .line 214
    if-eq v4, v2, :cond_6

    .line 215
    .line 216
    const/4 v2, 0x2

    .line 217
    if-eq v4, v2, :cond_5

    .line 218
    .line 219
    const/4 v2, 0x4

    .line 220
    if-eq v4, v2, :cond_4

    .line 221
    .line 222
    const/4 v2, 0x5

    .line 223
    if-eq v4, v2, :cond_3

    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    goto :goto_2

    .line 227
    :cond_3
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .line 228
    .line 229
    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    .line 234
    .line 235
    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_5
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 240
    .line 241
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_6
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 246
    .line 247
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_7
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 252
    .line 253
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_8
    invoke-static {v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionController$1;

    .line 262
    .line 263
    invoke-direct {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 264
    .line 265
    .line 266
    move-object v2, v3

    .line 267
    goto :goto_2

    .line 268
    :cond_9
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    :goto_2
    iput-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_a
    move/from16 v18, v2

    .line 276
    .line 277
    move-object/from16 v16, v3

    .line 278
    .line 279
    move-object/from16 v17, v4

    .line 280
    .line 281
    move/from16 v19, v6

    .line 282
    .line 283
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 284
    .line 285
    if-eqz v2, :cond_c

    .line 286
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_b
    move/from16 v18, v2

    .line 335
    .line 336
    move-object/from16 v16, v3

    .line 337
    .line 338
    move-object/from16 v17, v4

    .line 339
    .line 340
    move/from16 v19, v6

    .line 341
    .line 342
    :cond_c
    :goto_3
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 343
    .line 344
    if-eqz v2, :cond_f

    .line 345
    .line 346
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 347
    .line 348
    invoke-static {v2, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    if-eqz v2, :cond_e

    .line 353
    .line 354
    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 359
    .line 360
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 369
    .line 370
    if-eqz v6, :cond_d

    .line 371
    .line 372
    iget-object v7, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 373
    .line 374
    invoke-static {v2, v7, v6, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 378
    .line 379
    :cond_d
    iget-object v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 380
    .line 381
    const/high16 v5, 0x3f800000    # 1.0f

    .line 382
    .line 383
    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 384
    .line 385
    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 386
    .line 387
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 388
    .line 389
    .line 390
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 391
    .line 392
    int-to-float v5, v5

    .line 393
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 394
    .line 395
    int-to-float v7, v7

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    int-to-float v8, v8

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    int-to-float v10, v10

    .line 406
    invoke-virtual {v4, v5, v7, v8, v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 407
    .line 408
    .line 409
    iget v5, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 410
    .line 411
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 416
    .line 417
    .line 418
    iget-object v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 419
    .line 420
    iget v5, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 421
    .line 422
    invoke-virtual {v4, v2, v3, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 423
    .line 424
    .line 425
    goto :goto_4

    .line 426
    :cond_e
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 427
    .line 428
    if-eqz v2, :cond_f

    .line 429
    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    :cond_f
    :goto_4
    add-int/lit8 v6, v19, 0x1

    .line 477
    .line 478
    move-object/from16 v3, v16

    .line 479
    .line 480
    move-object/from16 v4, v17

    .line 481
    .line 482
    move/from16 v2, v18

    .line 483
    .line 484
    goto/16 :goto_1

    .line 485
    .line 486
    :cond_10
    move-object/from16 v16, v3

    .line 487
    .line 488
    move-object/from16 v17, v4

    .line 489
    .line 490
    move v0, v2

    .line 491
    const/4 v5, 0x0

    .line 492
    :goto_5
    if-ge v5, v0, :cond_12

    .line 493
    .line 494
    aget v1, v17, v5

    .line 495
    .line 496
    move-object/from16 v2, v16

    .line 497
    .line 498
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 503
    .line 504
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 505
    .line 506
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 507
    .line 508
    const/4 v4, -0x1

    .line 509
    if-eq v3, v4, :cond_11

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 516
    .line 517
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 518
    .line 519
    iget-object v7, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 520
    .line 521
    invoke-virtual {v7, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 522
    .line 523
    .line 524
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 525
    .line 526
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 527
    .line 528
    invoke-virtual {v1, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 529
    .line 530
    .line 531
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 532
    .line 533
    move-object/from16 v16, v2

    .line 534
    .line 535
    goto :goto_5

    .line 536
    :cond_12
    return-void
.end method

.method public final computeStartEndSize(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ne v2, v3, :cond_6

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v4, p2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v4, p1

    .line 29
    :goto_1
    if-eqz v3, :cond_3

    .line 30
    .line 31
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v3, p1

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    :goto_2
    move v3, p2

    .line 39
    :goto_3
    invoke-virtual {v0, v2, v1, v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 43
    .line 44
    if-eqz v2, :cond_e

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 47
    .line 48
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    move v3, p1

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    move v3, p2

    .line 55
    :goto_4
    if-nez v2, :cond_5

    .line 56
    .line 57
    move p1, p2

    .line 58
    :cond_5
    invoke-virtual {v0, p0, v1, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 59
    .line 60
    .line 61
    goto :goto_9

    .line 62
    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 63
    .line 64
    if-eqz v2, :cond_9

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 67
    .line 68
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 69
    .line 70
    if-nez v2, :cond_7

    .line 71
    .line 72
    move v4, p1

    .line 73
    goto :goto_5

    .line 74
    :cond_7
    move v4, p2

    .line 75
    :goto_5
    if-nez v2, :cond_8

    .line 76
    .line 77
    move v2, p2

    .line 78
    goto :goto_6

    .line 79
    :cond_8
    move v2, p1

    .line 80
    :goto_6
    invoke-virtual {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 81
    .line 82
    .line 83
    :cond_9
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 84
    .line 85
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 86
    .line 87
    if-eqz p0, :cond_b

    .line 88
    .line 89
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 90
    .line 91
    if-nez v3, :cond_a

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_a
    move v3, p2

    .line 95
    goto :goto_8

    .line 96
    :cond_b
    :goto_7
    move v3, p1

    .line 97
    :goto_8
    if-eqz p0, :cond_c

    .line 98
    .line 99
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 100
    .line 101
    if-nez p0, :cond_d

    .line 102
    .line 103
    :cond_c
    move p1, p2

    .line 104
    :cond_d
    invoke-virtual {v0, v2, v1, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 105
    .line 106
    .line 107
    :cond_e
    :goto_9
    return-void
.end method

.method public final initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 11
    .line 12
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    .line 21
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 26
    .line 27
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 28
    .line 29
    iput-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 30
    .line 31
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 32
    .line 33
    iput-object v4, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 34
    .line 35
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 36
    .line 37
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 40
    .line 41
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 42
    .line 43
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 67
    .line 68
    .line 69
    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 70
    .line 71
    float-to-double v0, v0

    .line 72
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 73
    .line 74
    cmpl-double v0, v0, v3

    .line 75
    .line 76
    if-lez v0, :cond_1

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 81
    .line 82
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 92
    .line 93
    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 94
    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 99
    .line 100
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 110
    .line 111
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 112
    .line 113
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 125
    .line 126
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 127
    .line 128
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    .line 141
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 142
    .line 143
    const/4 v1, -0x2

    .line 144
    if-ne p2, v1, :cond_3

    .line 145
    .line 146
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 147
    .line 148
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    .line 158
    if-ne p1, v1, :cond_4

    .line 159
    .line 160
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    return-void
.end method

.method public final reEvaluateState()V
    .locals 12

    .line 1
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    iget v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 4
    .line 5
    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 6
    .line 7
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 16
    .line 17
    iput v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    instance-of v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    const/4 v9, 0x0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    .line 34
    if-ne v0, v4, :cond_0

    .line 35
    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 73
    .line 74
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 75
    .line 76
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 77
    .line 78
    if-ne v3, v4, :cond_2

    .line 79
    .line 80
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 81
    .line 82
    if-eq v3, v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move v0, v9

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    move v0, v8

    .line 88
    :goto_1
    iput-boolean v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 89
    .line 90
    :goto_2
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 91
    .line 92
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 93
    .line 94
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 95
    .line 96
    const/high16 v5, -0x80000000

    .line 97
    .line 98
    if-eq v4, v5, :cond_4

    .line 99
    .line 100
    if-nez v4, :cond_3

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_3
    :goto_3
    move v4, v0

    .line 104
    goto :goto_5

    .line 105
    :cond_4
    :goto_4
    int-to-float v4, v0

    .line 106
    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 107
    .line 108
    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 109
    .line 110
    sub-int/2addr v10, v0

    .line 111
    int-to-float v0, v10

    .line 112
    mul-float/2addr v6, v0

    .line 113
    add-float/2addr v6, v4

    .line 114
    float-to-int v0, v6

    .line 115
    goto :goto_3

    .line 116
    :goto_5
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 117
    .line 118
    if-eq v0, v5, :cond_6

    .line 119
    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_5
    move v5, v3

    .line 124
    goto :goto_7

    .line 125
    :cond_6
    :goto_6
    int-to-float v0, v3

    .line 126
    iget v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 127
    .line 128
    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 129
    .line 130
    sub-int/2addr v6, v3

    .line 131
    int-to-float v3, v6

    .line 132
    mul-float/2addr v5, v3

    .line 133
    add-float/2addr v5, v0

    .line 134
    float-to-int v0, v5

    .line 135
    move v5, v0

    .line 136
    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 137
    .line 138
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 139
    .line 140
    if-nez v3, :cond_8

    .line 141
    .line 142
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 143
    .line 144
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_7
    move v6, v9

    .line 150
    goto :goto_9

    .line 151
    :cond_8
    :goto_8
    move v6, v8

    .line 152
    :goto_9
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 153
    .line 154
    if-nez v0, :cond_a

    .line 155
    .line 156
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 157
    .line 158
    iget-boolean p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 159
    .line 160
    if-eqz p0, :cond_9

    .line 161
    .line 162
    goto :goto_a

    .line 163
    :cond_9
    move p0, v9

    .line 164
    goto :goto_b

    .line 165
    :cond_a
    :goto_a
    move p0, v8

    .line 166
    :goto_b
    move-object v0, v7

    .line 167
    move v3, v4

    .line 168
    move v4, v5

    .line 169
    move v5, v6

    .line 170
    move v6, p0

    .line 171
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 181
    .line 182
    .line 183
    iput-boolean v8, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 184
    .line 185
    new-instance v0, Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 188
    .line 189
    .line 190
    move v1, v9

    .line 191
    :goto_c
    if-ge v1, p0, :cond_b

    .line 192
    .line 193
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 208
    .line 209
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v1, v1, 0x1

    .line 213
    .line 214
    goto :goto_c

    .line 215
    :cond_b
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 224
    .line 225
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 226
    .line 227
    const/4 v3, -0x1

    .line 228
    if-eqz v2, :cond_c

    .line 229
    .line 230
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 231
    .line 232
    goto :goto_d

    .line 233
    :cond_c
    move v2, v3

    .line 234
    :goto_d
    if-eq v2, v3, :cond_e

    .line 235
    .line 236
    move v4, v9

    .line 237
    :goto_e
    if-ge v4, p0, :cond_e

    .line 238
    .line 239
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 250
    .line 251
    if-eqz v5, :cond_d

    .line 252
    .line 253
    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 254
    .line 255
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 256
    .line 257
    goto :goto_e

    .line 258
    :cond_e
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 259
    .line 260
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    new-array v4, v4, [I

    .line 270
    .line 271
    move v5, v9

    .line 272
    move v6, v5

    .line 273
    :goto_f
    if-ge v5, p0, :cond_10

    .line 274
    .line 275
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 286
    .line 287
    iget-object v11, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 288
    .line 289
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 290
    .line 291
    if-eq v11, v3, :cond_f

    .line 292
    .line 293
    invoke-virtual {v2, v11, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 294
    .line 295
    .line 296
    add-int/lit8 v11, v6, 0x1

    .line 297
    .line 298
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 299
    .line 300
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 301
    .line 302
    aput v10, v4, v6

    .line 303
    .line 304
    move v6, v11

    .line 305
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 306
    .line 307
    goto :goto_f

    .line 308
    :cond_10
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 309
    .line 310
    if-eqz v3, :cond_15

    .line 311
    .line 312
    move v3, v9

    .line 313
    :goto_10
    if-ge v3, v6, :cond_12

    .line 314
    .line 315
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 316
    .line 317
    aget v10, v4, v3

    .line 318
    .line 319
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 328
    .line 329
    if-nez v5, :cond_11

    .line 330
    .line 331
    goto :goto_11

    .line 332
    :cond_11
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 333
    .line 334
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 335
    .line 336
    .line 337
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 338
    .line 339
    goto :goto_10

    .line 340
    :cond_12
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    if-eqz v5, :cond_13

    .line 351
    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 357
    .line 358
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 359
    .line 360
    invoke-virtual {v5, v7, v10}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    .line 361
    .line 362
    .line 363
    goto :goto_12

    .line 364
    :cond_13
    move v3, v9

    .line 365
    :goto_13
    if-ge v3, v6, :cond_17

    .line 366
    .line 367
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 368
    .line 369
    aget v10, v4, v3

    .line 370
    .line 371
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 380
    .line 381
    if-nez v5, :cond_14

    .line 382
    .line 383
    goto :goto_14

    .line 384
    :cond_14
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 385
    .line 386
    .line 387
    move-result-wide v10

    .line 388
    invoke-virtual {v5, v0, v1, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 389
    .line 390
    .line 391
    :goto_14
    add-int/lit8 v3, v3, 0x1

    .line 392
    .line 393
    goto :goto_13

    .line 394
    :cond_15
    move v3, v9

    .line 395
    :goto_15
    if-ge v3, v6, :cond_17

    .line 396
    .line 397
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 398
    .line 399
    aget v10, v4, v3

    .line 400
    .line 401
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 410
    .line 411
    if-nez v5, :cond_16

    .line 412
    .line 413
    goto :goto_16

    .line 414
    :cond_16
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 415
    .line 416
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 420
    .line 421
    .line 422
    move-result-wide v10

    .line 423
    invoke-virtual {v5, v0, v1, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 424
    .line 425
    .line 426
    :goto_16
    add-int/lit8 v3, v3, 0x1

    .line 427
    .line 428
    goto :goto_15

    .line 429
    :cond_17
    move v3, v9

    .line 430
    :goto_17
    if-ge v3, p0, :cond_1a

    .line 431
    .line 432
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 437
    .line 438
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 443
    .line 444
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-eqz v4, :cond_18

    .line 453
    .line 454
    goto :goto_18

    .line 455
    :cond_18
    if-eqz v5, :cond_19

    .line 456
    .line 457
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 458
    .line 459
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 463
    .line 464
    .line 465
    move-result-wide v10

    .line 466
    invoke-virtual {v5, v0, v1, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 467
    .line 468
    .line 469
    :cond_19
    :goto_18
    add-int/lit8 v3, v3, 0x1

    .line 470
    .line 471
    goto :goto_17

    .line 472
    :cond_1a
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 473
    .line 474
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 475
    .line 476
    const/4 v1, 0x0

    .line 477
    if-eqz v0, :cond_1b

    .line 478
    .line 479
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 480
    .line 481
    goto :goto_19

    .line 482
    :cond_1b
    move v0, v1

    .line 483
    :goto_19
    cmpl-float v1, v0, v1

    .line 484
    .line 485
    if-eqz v1, :cond_25

    .line 486
    .line 487
    float-to-double v1, v0

    .line 488
    const-wide/16 v3, 0x0

    .line 489
    .line 490
    cmpg-double v1, v1, v3

    .line 491
    .line 492
    if-gez v1, :cond_1c

    .line 493
    .line 494
    goto :goto_1a

    .line 495
    :cond_1c
    move v8, v9

    .line 496
    :goto_1a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    const v1, -0x800001

    .line 501
    .line 502
    .line 503
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 504
    .line 505
    .line 506
    move v5, v1

    .line 507
    move v4, v2

    .line 508
    move v3, v9

    .line 509
    :goto_1b
    const/high16 v6, 0x3f800000    # 1.0f

    .line 510
    .line 511
    if-ge v3, p0, :cond_23

    .line 512
    .line 513
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 514
    .line 515
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 524
    .line 525
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 526
    .line 527
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 528
    .line 529
    .line 530
    move-result v11

    .line 531
    if-nez v11, :cond_21

    .line 532
    .line 533
    move v3, v9

    .line 534
    :goto_1c
    if-ge v3, p0, :cond_1e

    .line 535
    .line 536
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 537
    .line 538
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 547
    .line 548
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 549
    .line 550
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    if-nez v5, :cond_1d

    .line 555
    .line 556
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 557
    .line 558
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 563
    .line 564
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 569
    .line 570
    goto :goto_1c

    .line 571
    :cond_1e
    :goto_1d
    if-ge v9, p0, :cond_25

    .line 572
    .line 573
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 574
    .line 575
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 584
    .line 585
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 586
    .line 587
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    if-nez v4, :cond_20

    .line 592
    .line 593
    sub-float v4, v6, v0

    .line 594
    .line 595
    div-float v4, v6, v4

    .line 596
    .line 597
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 598
    .line 599
    if-eqz v8, :cond_1f

    .line 600
    .line 601
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 602
    .line 603
    sub-float v4, v1, v4

    .line 604
    .line 605
    sub-float v5, v1, v2

    .line 606
    .line 607
    div-float/2addr v4, v5

    .line 608
    mul-float/2addr v4, v0

    .line 609
    sub-float v4, v0, v4

    .line 610
    .line 611
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 612
    .line 613
    goto :goto_1e

    .line 614
    :cond_1f
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 615
    .line 616
    sub-float/2addr v4, v2

    .line 617
    mul-float/2addr v4, v0

    .line 618
    sub-float v5, v1, v2

    .line 619
    .line 620
    div-float/2addr v4, v5

    .line 621
    sub-float v4, v0, v4

    .line 622
    .line 623
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 624
    .line 625
    :cond_20
    :goto_1e
    add-int/lit8 v9, v9, 0x1

    .line 626
    .line 627
    goto :goto_1d

    .line 628
    :cond_21
    iget-object v6, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 629
    .line 630
    iget v10, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 631
    .line 632
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 633
    .line 634
    if-eqz v8, :cond_22

    .line 635
    .line 636
    sub-float/2addr v6, v10

    .line 637
    goto :goto_1f

    .line 638
    :cond_22
    add-float/2addr v6, v10

    .line 639
    :goto_1f
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    add-int/lit8 v3, v3, 0x1

    .line 648
    .line 649
    goto/16 :goto_1b

    .line 650
    .line 651
    :cond_23
    :goto_20
    if-ge v9, p0, :cond_25

    .line 652
    .line 653
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 654
    .line 655
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 664
    .line 665
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 666
    .line 667
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 668
    .line 669
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 670
    .line 671
    if-eqz v8, :cond_24

    .line 672
    .line 673
    sub-float/2addr v2, v3

    .line 674
    goto :goto_21

    .line 675
    :cond_24
    add-float/2addr v2, v3

    .line 676
    :goto_21
    sub-float v3, v6, v0

    .line 677
    .line 678
    div-float v3, v6, v3

    .line 679
    .line 680
    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 681
    .line 682
    sub-float/2addr v2, v4

    .line 683
    mul-float/2addr v2, v0

    .line 684
    sub-float v3, v5, v4

    .line 685
    .line 686
    div-float/2addr v2, v3

    .line 687
    sub-float v2, v0, v2

    .line 688
    .line 689
    iput v2, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 690
    .line 691
    add-int/lit8 v9, v9, 0x1

    .line 692
    .line 693
    goto :goto_20

    .line 694
    :cond_25
    return-void
.end method

.method public final setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    new-instance v10, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v11, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 14
    .line 15
    invoke-direct {v11}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    invoke-virtual {v10, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v10, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 41
    .line 42
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const/high16 v7, 0x40000000    # 2.0f

    .line 51
    .line 52
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    sget-boolean v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 65
    .line 66
    invoke-virtual {v13, v4, v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    .line 87
    iput-boolean v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 88
    .line 89
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    move-object v15, v4

    .line 118
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 119
    .line 120
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 121
    .line 122
    move-object v9, v4

    .line 123
    check-cast v9, Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_2

    .line 140
    .line 141
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 152
    .line 153
    if-eqz v4, :cond_2

    .line 154
    .line 155
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 167
    .line 168
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 169
    .line 170
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 182
    .line 183
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 184
    .line 185
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 186
    .line 187
    .line 188
    instance-of v4, v9, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 189
    .line 190
    if-eqz v4, :cond_4

    .line 191
    .line 192
    move-object v4, v9

    .line 193
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 194
    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    iget-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_3

    .line 210
    .line 211
    iget-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 222
    .line 223
    if-eqz v5, :cond_3

    .line 224
    .line 225
    instance-of v6, v15, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 226
    .line 227
    if-eqz v6, :cond_3

    .line 228
    .line 229
    move-object v6, v15

    .line 230
    check-cast v6, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 231
    .line 232
    invoke-virtual {v4, v5, v6, v11, v10}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V

    .line 233
    .line 234
    .line 235
    :cond_3
    instance-of v4, v9, Landroidx/constraintlayout/widget/Barrier;

    .line 236
    .line 237
    if-eqz v4, :cond_4

    .line 238
    .line 239
    move-object v4, v9

    .line 240
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 241
    .line 242
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 243
    .line 244
    .line 245
    :cond_4
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 250
    .line 251
    .line 252
    sget-boolean v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 253
    .line 254
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    move-object v6, v9

    .line 258
    move-object v7, v15

    .line 259
    move-object v8, v11

    .line 260
    move-object/from16 v16, v9

    .line 261
    .line 262
    move-object v9, v10

    .line 263
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 275
    .line 276
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 277
    .line 278
    if-ne v4, v3, :cond_5

    .line 279
    .line 280
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    iput v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 297
    .line 298
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 299
    .line 300
    iput v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_6
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_9

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 321
    .line 322
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 323
    .line 324
    if-eqz v2, :cond_7

    .line 325
    .line 326
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 329
    .line 330
    check-cast v1, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 331
    .line 332
    invoke-virtual {v2, v1, v10}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/core/widgets/HelperWidget;Landroid/util/SparseArray;)V

    .line 333
    .line 334
    .line 335
    check-cast v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 336
    .line 337
    move v2, v12

    .line 338
    :goto_2
    iget v4, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 339
    .line 340
    if-ge v2, v4, :cond_7

    .line 341
    .line 342
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 343
    .line 344
    aget-object v4, v4, v2

    .line 345
    .line 346
    if-eqz v4, :cond_8

    .line 347
    .line 348
    iput-boolean v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 349
    .line 350
    :cond_8
    add-int/2addr v2, v3

    .line 351
    goto :goto_2

    .line 352
    :cond_9
    return-void
.end method
