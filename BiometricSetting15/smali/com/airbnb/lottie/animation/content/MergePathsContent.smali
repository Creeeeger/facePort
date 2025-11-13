.class public final Lcom/airbnb/lottie/animation/content/MergePathsContent;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/content/GreedyContent;


# instance fields
.field public final firstPath:Landroid/graphics/Path;

.field public final mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

.field public final path:Landroid/graphics/Path;

.field public final pathContents:Ljava/util/List;

.field public final remainderPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/MergePaths;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final absorbContent(Ljava/util/ListIterator;)V
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eq v0, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 25
    .line 26
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 31
    .line 32
    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 33
    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/airbnb/lottie/model/content/MergePaths;->hidden:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/model/content/MergePaths;->mode:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_4

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 62
    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ge v0, v1, :cond_6

    .line 70
    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 74
    .line 75
    check-cast v2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 82
    .line 83
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 94
    .line 95
    return-object p0
.end method

.method public final opFirstPathWithRest(Landroid/graphics/Path$Op;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    :goto_0
    if-lt v0, v1, :cond_3

    .line 22
    .line 23
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 32
    .line 33
    instance-of v3, v2, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v2, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    sub-int/2addr v4, v1

    .line 48
    :goto_1
    if-ltz v4, :cond_2

    .line 49
    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 55
    .line 56
    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, v2, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    iget-object v6, v2, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 72
    .line 73
    .line 74
    iget-object v6, v2, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 75
    .line 76
    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 77
    .line 78
    .line 79
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 88
    .line 89
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 100
    .line 101
    check-cast v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 109
    .line 110
    instance-of v2, v0, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    check-cast v0, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-ge v1, v3, :cond_6

    .line 125
    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 131
    .line 132
    invoke-interface {v3}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 137
    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    goto :goto_4

    .line 145
    :cond_4
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 146
    .line 147
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 148
    .line 149
    .line 150
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 151
    .line 152
    :goto_4
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 153
    .line 154
    .line 155
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 156
    .line 157
    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 164
    .line 165
    invoke-interface {v0}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 177
    .line 178
    invoke-virtual {v0, v1, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 21
    .line 22
    invoke-interface {v1, p1, p2}, Lcom/airbnb/lottie/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
