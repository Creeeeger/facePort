.class public final Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final sTempDimensions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->sTempDimensions:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 7
    .line 8
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mType:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    .line 12
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 13
    .line 14
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mType:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 18
    .line 19
    return-void
.end method

.method public static computeInsetRatio([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p4, p3

    .line 3
    const/4 p1, -0x1

    .line 4
    const/4 p3, 0x0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p6, p1, :cond_2

    .line 9
    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    if-eq p6, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float p1, p2

    .line 16
    mul-float/2addr p1, p5

    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    aput p2, p0, p3

    .line 20
    .line 21
    aput p1, p0, v1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    int-to-float p1, p4

    .line 25
    mul-float/2addr p1, p5

    .line 26
    add-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    aput p1, p0, p3

    .line 29
    .line 30
    aput p4, p0, v1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    int-to-float p1, p4

    .line 34
    mul-float/2addr p1, p5

    .line 35
    add-float/2addr p1, v0

    .line 36
    float-to-int p1, p1

    .line 37
    int-to-float p6, p2

    .line 38
    div-float/2addr p6, p5

    .line 39
    add-float/2addr p6, v0

    .line 40
    float-to-int p5, p6

    .line 41
    if-gt p1, p2, :cond_3

    .line 42
    .line 43
    aput p1, p0, p3

    .line 44
    .line 45
    aput p4, p0, v1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-gt p5, p4, :cond_4

    .line 49
    .line 50
    aput p2, p0, p3

    .line 51
    .line 52
    aput p5, p0, v1

    .line 53
    .line 54
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 17
    .line 18
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 19
    .line 20
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 21
    .line 22
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 32
    .line 33
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    aget-object v8, v8, v7

    .line 36
    .line 37
    iput-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    if-eq v8, v3, :cond_5

    .line 40
    .line 41
    if-ne v8, v1, :cond_2

    .line 42
    .line 43
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    .line 45
    if-eqz v9, :cond_2

    .line 46
    .line 47
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    .line 49
    aget-object v10, v10, v7

    .line 50
    .line 51
    if-eq v10, v4, :cond_1

    .line 52
    .line 53
    if-ne v10, v1, :cond_2

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sub-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sub-int/2addr v0, v1

    .line 77
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 78
    .line 79
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 80
    .line 81
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 82
    .line 83
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v6, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 93
    .line 94
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 95
    .line 96
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 97
    .line 98
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    neg-int p0, p0

    .line 105
    invoke-static {v5, v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    if-ne v8, v4, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 123
    .line 124
    if-ne v0, v1, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 127
    .line 128
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 129
    .line 130
    if-eqz v8, :cond_5

    .line 131
    .line 132
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 133
    .line 134
    aget-object v9, v9, v7

    .line 135
    .line 136
    if-eq v9, v4, :cond_4

    .line 137
    .line 138
    if-ne v9, v1, :cond_5

    .line 139
    .line 140
    :cond_4
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 141
    .line 142
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 143
    .line 144
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-static {v6, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 154
    .line 155
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 156
    .line 157
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 158
    .line 159
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    neg-int p0, p0

    .line 166
    invoke-static {v5, v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    :goto_0
    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 171
    .line 172
    const/4 v1, 0x1

    .line 173
    if-eqz v0, :cond_c

    .line 174
    .line 175
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 176
    .line 177
    iget-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 178
    .line 179
    if-eqz v4, :cond_c

    .line 180
    .line 181
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 182
    .line 183
    aget-object v4, v3, v7

    .line 184
    .line 185
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 186
    .line 187
    if-eqz v8, :cond_9

    .line 188
    .line 189
    aget-object v9, v3, v1

    .line 190
    .line 191
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    if-eqz v9, :cond_9

    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 202
    .line 203
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 204
    .line 205
    aget-object v0, v0, v7

    .line 206
    .line 207
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 212
    .line 213
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 214
    .line 215
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 216
    .line 217
    aget-object p0, p0, v1

    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    neg-int p0, p0

    .line 224
    iput p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 229
    .line 230
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 231
    .line 232
    aget-object v0, v0, v7

    .line 233
    .line 234
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 241
    .line 242
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 243
    .line 244
    aget-object v2, v2, v7

    .line 245
    .line 246
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-static {v6, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 251
    .line 252
    .line 253
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 254
    .line 255
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 256
    .line 257
    aget-object v0, v0, v1

    .line 258
    .line 259
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_8

    .line 264
    .line 265
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 266
    .line 267
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 268
    .line 269
    aget-object p0, p0, v1

    .line 270
    .line 271
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    neg-int p0, p0

    .line 276
    invoke-static {v5, v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 277
    .line 278
    .line 279
    :cond_8
    iput-boolean v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 280
    .line 281
    iput-boolean v1, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :cond_9
    if-eqz v8, :cond_a

    .line 286
    .line 287
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-eqz v0, :cond_1a

    .line 292
    .line 293
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 294
    .line 295
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 296
    .line 297
    aget-object p0, p0, v7

    .line 298
    .line 299
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 300
    .line 301
    .line 302
    move-result p0

    .line 303
    invoke-static {v6, v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 304
    .line 305
    .line 306
    iget p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 307
    .line 308
    invoke-static {v5, v6, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :cond_a
    aget-object v3, v3, v1

    .line 314
    .line 315
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 316
    .line 317
    if-eqz v4, :cond_b

    .line 318
    .line 319
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_1a

    .line 324
    .line 325
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 326
    .line 327
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 328
    .line 329
    aget-object p0, p0, v1

    .line 330
    .line 331
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    neg-int p0, p0

    .line 336
    invoke-static {v5, v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 337
    .line 338
    .line 339
    iget p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 340
    .line 341
    neg-int p0, p0

    .line 342
    invoke-static {v6, v5, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_b
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 348
    .line 349
    if-nez v1, :cond_1a

    .line 350
    .line 351
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 352
    .line 353
    if-eqz v1, :cond_1a

    .line 354
    .line 355
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 362
    .line 363
    if-nez v0, :cond_1a

    .line 364
    .line 365
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 366
    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 368
    .line 369
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 370
    .line 371
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 372
    .line 373
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    invoke-static {v6, v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 378
    .line 379
    .line 380
    iget p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 381
    .line 382
    invoke-static {v5, v6, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 388
    .line 389
    if-ne v0, v3, :cond_13

    .line 390
    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 392
    .line 393
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 394
    .line 395
    const/4 v4, 0x2

    .line 396
    if-eq v3, v4, :cond_11

    .line 397
    .line 398
    const/4 v4, 0x3

    .line 399
    if-eq v3, v4, :cond_d

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :cond_d
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 404
    .line 405
    if-ne v3, v4, :cond_10

    .line 406
    .line 407
    iput-object p0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 408
    .line 409
    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 410
    .line 411
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 412
    .line 413
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 414
    .line 415
    iput-object p0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 416
    .line 417
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 418
    .line 419
    iput-object p0, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 420
    .line 421
    iput-object p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 422
    .line 423
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_e

    .line 428
    .line 429
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 430
    .line 431
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 432
    .line 433
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 434
    .line 435
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 436
    .line 437
    check-cast v0, Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 443
    .line 444
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 445
    .line 446
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 447
    .line 448
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 449
    .line 450
    check-cast v0, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 456
    .line 457
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 458
    .line 459
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 460
    .line 461
    iput-object p0, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 462
    .line 463
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 464
    .line 465
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 466
    .line 467
    check-cast v3, Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 473
    .line 474
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 475
    .line 476
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 477
    .line 478
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 479
    .line 480
    check-cast v0, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 486
    .line 487
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 488
    .line 489
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 490
    .line 491
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 492
    .line 493
    check-cast v0, Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 499
    .line 500
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 501
    .line 502
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 503
    .line 504
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 505
    .line 506
    check-cast v0, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 514
    .line 515
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_f

    .line 520
    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 522
    .line 523
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 524
    .line 525
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 526
    .line 527
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 528
    .line 529
    check-cast v0, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 535
    .line 536
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 537
    .line 538
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 539
    .line 540
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 541
    .line 542
    check-cast v0, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    goto/16 :goto_1

    .line 548
    .line 549
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 550
    .line 551
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 552
    .line 553
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 554
    .line 555
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 556
    .line 557
    check-cast v0, Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    goto :goto_1

    .line 563
    :cond_10
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 564
    .line 565
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 566
    .line 567
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 568
    .line 569
    check-cast v3, Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 575
    .line 576
    check-cast v0, Ljava/util/ArrayList;

    .line 577
    .line 578
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 582
    .line 583
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 584
    .line 585
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 586
    .line 587
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 588
    .line 589
    check-cast v0, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 595
    .line 596
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 597
    .line 598
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 599
    .line 600
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 601
    .line 602
    check-cast v0, Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 608
    .line 609
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 610
    .line 611
    check-cast v0, Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 617
    .line 618
    check-cast v0, Ljava/util/ArrayList;

    .line 619
    .line 620
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 624
    .line 625
    check-cast v0, Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 631
    .line 632
    check-cast v0, Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    goto :goto_1

    .line 638
    :cond_11
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 639
    .line 640
    if-nez v0, :cond_12

    .line 641
    .line 642
    goto :goto_1

    .line 643
    :cond_12
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 644
    .line 645
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 646
    .line 647
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 648
    .line 649
    check-cast v3, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 655
    .line 656
    check-cast v0, Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 662
    .line 663
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 664
    .line 665
    check-cast v0, Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    .line 671
    .line 672
    check-cast v0, Ljava/util/ArrayList;

    .line 673
    .line 674
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    :cond_13
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 678
    .line 679
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 680
    .line 681
    aget-object v4, v3, v7

    .line 682
    .line 683
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 684
    .line 685
    if-eqz v8, :cond_17

    .line 686
    .line 687
    aget-object v9, v3, v1

    .line 688
    .line 689
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 690
    .line 691
    if-eqz v9, :cond_17

    .line 692
    .line 693
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_14

    .line 698
    .line 699
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 700
    .line 701
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 702
    .line 703
    aget-object v0, v0, v7

    .line 704
    .line 705
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 710
    .line 711
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 712
    .line 713
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 714
    .line 715
    aget-object p0, p0, v1

    .line 716
    .line 717
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 718
    .line 719
    .line 720
    move-result p0

    .line 721
    neg-int p0, p0

    .line 722
    iput p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 723
    .line 724
    goto/16 :goto_2

    .line 725
    .line 726
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 727
    .line 728
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 729
    .line 730
    aget-object v0, v0, v7

    .line 731
    .line 732
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 737
    .line 738
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 739
    .line 740
    aget-object v1, v2, v1

    .line 741
    .line 742
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    if-eqz v0, :cond_15

    .line 747
    .line 748
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    .line 749
    .line 750
    .line 751
    :cond_15
    if-eqz v1, :cond_16

    .line 752
    .line 753
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    .line 754
    .line 755
    .line 756
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 757
    .line 758
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 759
    .line 760
    goto :goto_2

    .line 761
    :cond_17
    if-eqz v8, :cond_18

    .line 762
    .line 763
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    if-eqz v0, :cond_1a

    .line 768
    .line 769
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 770
    .line 771
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 772
    .line 773
    aget-object v3, v3, v7

    .line 774
    .line 775
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 776
    .line 777
    .line 778
    move-result v3

    .line 779
    invoke-static {v6, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {p0, v5, v6, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    .line 783
    .line 784
    .line 785
    goto :goto_2

    .line 786
    :cond_18
    aget-object v3, v3, v1

    .line 787
    .line 788
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 789
    .line 790
    if-eqz v4, :cond_19

    .line 791
    .line 792
    invoke-static {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    if-eqz v0, :cond_1a

    .line 797
    .line 798
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 799
    .line 800
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 801
    .line 802
    aget-object v1, v3, v1

    .line 803
    .line 804
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    neg-int v1, v1

    .line 809
    invoke-static {v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 810
    .line 811
    .line 812
    const/4 v0, -0x1

    .line 813
    invoke-virtual {p0, v6, v5, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    .line 814
    .line 815
    .line 816
    goto :goto_2

    .line 817
    :cond_19
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 818
    .line 819
    if-nez v3, :cond_1a

    .line 820
    .line 821
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 822
    .line 823
    if-eqz v3, :cond_1a

    .line 824
    .line 825
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 826
    .line 827
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 828
    .line 829
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    invoke-static {v6, v3, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {p0, v5, v6, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V

    .line 837
    .line 838
    .line 839
    :cond_1a
    :goto_2
    return-void
.end method

.method public final applyToWidget()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    .line 9
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 21
    .line 22
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 21
    .line 22
    return-void
.end method

.method public final supportsWrapComputation()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    .line 10
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HorizontalRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq v1, v3, :cond_2a

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 14
    .line 15
    iget-boolean v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 16
    .line 17
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 18
    .line 19
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 20
    .line 21
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 22
    .line 23
    const/high16 v8, 0x3f000000    # 0.5f

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    if-nez v4, :cond_21

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    .line 30
    if-ne v4, v5, :cond_21

    .line 31
    .line 32
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 33
    .line 34
    iget v10, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 35
    .line 36
    const/4 v11, 0x2

    .line 37
    if-eq v10, v11, :cond_20

    .line 38
    .line 39
    if-eq v10, v3, :cond_0

    .line 40
    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_0
    iget v10, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 44
    .line 45
    const/4 v11, -0x1

    .line 46
    if-eqz v10, :cond_5

    .line 47
    .line 48
    if-ne v10, v3, :cond_1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 52
    .line 53
    if-eq v3, v11, :cond_4

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    if-eq v3, v9, :cond_2

    .line 58
    .line 59
    move v3, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 62
    .line 63
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 64
    .line 65
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 69
    .line 70
    :goto_0
    mul-float/2addr v3, v4

    .line 71
    :goto_1
    add-float/2addr v3, v8

    .line 72
    float-to-int v3, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 75
    .line 76
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 77
    .line 78
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 79
    .line 80
    int-to-float v3, v3

    .line 81
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 82
    .line 83
    div-float/2addr v3, v4

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 86
    .line 87
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 88
    .line 89
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 90
    .line 91
    int-to-float v3, v3

    .line 92
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_2
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_e

    .line 99
    .line 100
    :cond_5
    :goto_3
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 101
    .line 102
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 103
    .line 104
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 105
    .line 106
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 107
    .line 108
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 109
    .line 110
    if-eqz v12, :cond_6

    .line 111
    .line 112
    move v12, v9

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move v12, v2

    .line 115
    :goto_4
    iget-object v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 116
    .line 117
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 118
    .line 119
    if-eqz v13, :cond_7

    .line 120
    .line 121
    move v13, v9

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    move v13, v2

    .line 124
    :goto_5
    iget-object v14, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 125
    .line 126
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 127
    .line 128
    if-eqz v14, :cond_8

    .line 129
    .line 130
    move v14, v9

    .line 131
    goto :goto_6

    .line 132
    :cond_8
    move v14, v2

    .line 133
    :goto_6
    iget-object v15, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 134
    .line 135
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 136
    .line 137
    if-eqz v15, :cond_9

    .line 138
    .line 139
    move v15, v9

    .line 140
    goto :goto_7

    .line 141
    :cond_9
    move v15, v2

    .line 142
    :goto_7
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 143
    .line 144
    if-eqz v12, :cond_12

    .line 145
    .line 146
    if-eqz v13, :cond_12

    .line 147
    .line 148
    if-eqz v14, :cond_12

    .line 149
    .line 150
    if-eqz v15, :cond_12

    .line 151
    .line 152
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 153
    .line 154
    iget-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 155
    .line 156
    sget-object v12, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->sTempDimensions:[I

    .line 157
    .line 158
    if-eqz v11, :cond_c

    .line 159
    .line 160
    iget-boolean v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 161
    .line 162
    if-eqz v11, :cond_c

    .line 163
    .line 164
    iget-boolean v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 165
    .line 166
    if-eqz v5, :cond_b

    .line 167
    .line 168
    iget-boolean v5, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 169
    .line 170
    if-nez v5, :cond_a

    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_a
    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 174
    .line 175
    check-cast v5, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 182
    .line 183
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 184
    .line 185
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 186
    .line 187
    add-int v17, v5, v6

    .line 188
    .line 189
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 190
    .line 191
    check-cast v5, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 198
    .line 199
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 200
    .line 201
    iget v6, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 202
    .line 203
    sub-int v18, v5, v6

    .line 204
    .line 205
    iget v5, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 206
    .line 207
    iget v6, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 208
    .line 209
    add-int v19, v5, v6

    .line 210
    .line 211
    iget v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 212
    .line 213
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 214
    .line 215
    sub-int v20, v5, v3

    .line 216
    .line 217
    move-object/from16 v16, v12

    .line 218
    .line 219
    move/from16 v21, v4

    .line 220
    .line 221
    move/from16 v22, v8

    .line 222
    .line 223
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 224
    .line 225
    .line 226
    aget v2, v12, v2

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 232
    .line 233
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 234
    .line 235
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 236
    .line 237
    aget v1, v12, v9

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 240
    .line 241
    .line 242
    :cond_b
    :goto_8
    return-void

    .line 243
    :cond_c
    iget-boolean v11, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 244
    .line 245
    if-eqz v11, :cond_f

    .line 246
    .line 247
    iget-boolean v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 248
    .line 249
    if-eqz v11, :cond_f

    .line 250
    .line 251
    iget-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 252
    .line 253
    if-eqz v11, :cond_e

    .line 254
    .line 255
    iget-boolean v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 256
    .line 257
    if-nez v11, :cond_d

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_d
    iget v11, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 261
    .line 262
    iget v13, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 263
    .line 264
    add-int v17, v11, v13

    .line 265
    .line 266
    iget v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 267
    .line 268
    iget v13, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 269
    .line 270
    sub-int v18, v11, v13

    .line 271
    .line 272
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 273
    .line 274
    check-cast v11, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 281
    .line 282
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 283
    .line 284
    iget v13, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 285
    .line 286
    add-int v19, v11, v13

    .line 287
    .line 288
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 289
    .line 290
    check-cast v11, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 297
    .line 298
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 299
    .line 300
    iget v13, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 301
    .line 302
    sub-int v20, v11, v13

    .line 303
    .line 304
    move-object/from16 v16, v12

    .line 305
    .line 306
    move/from16 v21, v4

    .line 307
    .line 308
    move/from16 v22, v8

    .line 309
    .line 310
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 311
    .line 312
    .line 313
    aget v11, v12, v2

    .line 314
    .line 315
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 316
    .line 317
    .line 318
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 319
    .line 320
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 321
    .line 322
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 323
    .line 324
    aget v13, v12, v9

    .line 325
    .line 326
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_e
    :goto_9
    return-void

    .line 331
    :cond_f
    :goto_a
    iget-boolean v11, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 332
    .line 333
    if-eqz v11, :cond_11

    .line 334
    .line 335
    iget-boolean v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 336
    .line 337
    if-eqz v11, :cond_11

    .line 338
    .line 339
    iget-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 340
    .line 341
    if-eqz v11, :cond_11

    .line 342
    .line 343
    iget-boolean v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 344
    .line 345
    if-nez v11, :cond_10

    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_10
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 349
    .line 350
    check-cast v11, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 357
    .line 358
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 359
    .line 360
    iget v13, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 361
    .line 362
    add-int v17, v11, v13

    .line 363
    .line 364
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 365
    .line 366
    check-cast v11, Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v11

    .line 372
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 373
    .line 374
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 375
    .line 376
    iget v13, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 377
    .line 378
    sub-int v18, v11, v13

    .line 379
    .line 380
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 381
    .line 382
    check-cast v11, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 389
    .line 390
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 391
    .line 392
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 393
    .line 394
    add-int v19, v11, v10

    .line 395
    .line 396
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 397
    .line 398
    check-cast v10, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 405
    .line 406
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 407
    .line 408
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 409
    .line 410
    sub-int v20, v10, v3

    .line 411
    .line 412
    move-object/from16 v16, v12

    .line 413
    .line 414
    move/from16 v21, v4

    .line 415
    .line 416
    move/from16 v22, v8

    .line 417
    .line 418
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->computeInsetRatio([IIIIIFI)V

    .line 419
    .line 420
    .line 421
    aget v3, v12, v2

    .line 422
    .line 423
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 424
    .line 425
    .line 426
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 427
    .line 428
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 429
    .line 430
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 431
    .line 432
    aget v4, v12, v9

    .line 433
    .line 434
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_e

    .line 438
    .line 439
    :cond_11
    :goto_b
    return-void

    .line 440
    :cond_12
    if-eqz v12, :cond_19

    .line 441
    .line 442
    if-eqz v14, :cond_19

    .line 443
    .line 444
    iget-boolean v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 445
    .line 446
    if-eqz v3, :cond_18

    .line 447
    .line 448
    iget-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 449
    .line 450
    if-nez v3, :cond_13

    .line 451
    .line 452
    goto :goto_c

    .line 453
    :cond_13
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 454
    .line 455
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 456
    .line 457
    check-cast v4, Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 464
    .line 465
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 466
    .line 467
    iget v10, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 468
    .line 469
    add-int/2addr v4, v10

    .line 470
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 471
    .line 472
    check-cast v10, Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 479
    .line 480
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 481
    .line 482
    iget v12, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 483
    .line 484
    sub-int/2addr v10, v12

    .line 485
    if-eq v8, v11, :cond_16

    .line 486
    .line 487
    if-eqz v8, :cond_16

    .line 488
    .line 489
    if-eq v8, v9, :cond_14

    .line 490
    .line 491
    goto/16 :goto_e

    .line 492
    .line 493
    :cond_14
    sub-int/2addr v10, v4

    .line 494
    invoke-virtual {v0, v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    int-to-float v8, v4

    .line 499
    div-float/2addr v8, v3

    .line 500
    const/high16 v10, 0x3f000000    # 0.5f

    .line 501
    .line 502
    add-float/2addr v8, v10

    .line 503
    float-to-int v8, v8

    .line 504
    invoke-virtual {v0, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    if-eq v8, v11, :cond_15

    .line 509
    .line 510
    int-to-float v4, v11

    .line 511
    mul-float/2addr v4, v3

    .line 512
    add-float/2addr v4, v10

    .line 513
    float-to-int v4, v4

    .line 514
    :cond_15
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 515
    .line 516
    .line 517
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 518
    .line 519
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 520
    .line 521
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 522
    .line 523
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_e

    .line 527
    .line 528
    :cond_16
    sub-int/2addr v10, v4

    .line 529
    invoke-virtual {v0, v10, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    int-to-float v8, v4

    .line 534
    mul-float/2addr v8, v3

    .line 535
    const/high16 v10, 0x3f000000    # 0.5f

    .line 536
    .line 537
    add-float/2addr v8, v10

    .line 538
    float-to-int v8, v8

    .line 539
    invoke-virtual {v0, v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 540
    .line 541
    .line 542
    move-result v11

    .line 543
    if-eq v8, v11, :cond_17

    .line 544
    .line 545
    int-to-float v4, v11

    .line 546
    div-float/2addr v4, v3

    .line 547
    add-float/2addr v4, v10

    .line 548
    float-to-int v4, v4

    .line 549
    :cond_17
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 550
    .line 551
    .line 552
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 553
    .line 554
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 555
    .line 556
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 557
    .line 558
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_e

    .line 562
    .line 563
    :cond_18
    :goto_c
    return-void

    .line 564
    :cond_19
    if-eqz v13, :cond_21

    .line 565
    .line 566
    if-eqz v15, :cond_21

    .line 567
    .line 568
    iget-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 569
    .line 570
    if-eqz v12, :cond_1f

    .line 571
    .line 572
    iget-boolean v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 573
    .line 574
    if-nez v12, :cond_1a

    .line 575
    .line 576
    goto :goto_d

    .line 577
    :cond_1a
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 578
    .line 579
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 580
    .line 581
    check-cast v12, Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v12

    .line 587
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 588
    .line 589
    iget v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 590
    .line 591
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 592
    .line 593
    add-int/2addr v12, v10

    .line 594
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 595
    .line 596
    check-cast v10, Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 603
    .line 604
    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 605
    .line 606
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 607
    .line 608
    sub-int/2addr v10, v3

    .line 609
    if-eq v8, v11, :cond_1d

    .line 610
    .line 611
    if-eqz v8, :cond_1b

    .line 612
    .line 613
    if-eq v8, v9, :cond_1d

    .line 614
    .line 615
    goto :goto_e

    .line 616
    :cond_1b
    sub-int/2addr v10, v12

    .line 617
    invoke-virtual {v0, v10, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    int-to-float v8, v3

    .line 622
    mul-float/2addr v8, v4

    .line 623
    const/high16 v10, 0x3f000000    # 0.5f

    .line 624
    .line 625
    add-float/2addr v8, v10

    .line 626
    float-to-int v8, v8

    .line 627
    invoke-virtual {v0, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    if-eq v8, v11, :cond_1c

    .line 632
    .line 633
    int-to-float v3, v11

    .line 634
    div-float/2addr v3, v4

    .line 635
    add-float/2addr v3, v10

    .line 636
    float-to-int v3, v3

    .line 637
    :cond_1c
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 638
    .line 639
    .line 640
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 641
    .line 642
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 643
    .line 644
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 645
    .line 646
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 647
    .line 648
    .line 649
    goto :goto_e

    .line 650
    :cond_1d
    sub-int/2addr v10, v12

    .line 651
    invoke-virtual {v0, v10, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    int-to-float v8, v3

    .line 656
    div-float/2addr v8, v4

    .line 657
    const/high16 v10, 0x3f000000    # 0.5f

    .line 658
    .line 659
    add-float/2addr v8, v10

    .line 660
    float-to-int v8, v8

    .line 661
    invoke-virtual {v0, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    .line 662
    .line 663
    .line 664
    move-result v11

    .line 665
    if-eq v8, v11, :cond_1e

    .line 666
    .line 667
    int-to-float v3, v11

    .line 668
    mul-float/2addr v3, v4

    .line 669
    add-float/2addr v3, v10

    .line 670
    float-to-int v3, v3

    .line 671
    :cond_1e
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 672
    .line 673
    .line 674
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 675
    .line 676
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 677
    .line 678
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 679
    .line 680
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 681
    .line 682
    .line 683
    goto :goto_e

    .line 684
    :cond_1f
    :goto_d
    return-void

    .line 685
    :cond_20
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 686
    .line 687
    if-eqz v3, :cond_21

    .line 688
    .line 689
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 690
    .line 691
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 692
    .line 693
    iget-boolean v8, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 694
    .line 695
    if-eqz v8, :cond_21

    .line 696
    .line 697
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 698
    .line 699
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 700
    .line 701
    int-to-float v3, v3

    .line 702
    mul-float/2addr v3, v4

    .line 703
    const/high16 v4, 0x3f000000    # 0.5f

    .line 704
    .line 705
    add-float/2addr v3, v4

    .line 706
    float-to-int v3, v3

    .line 707
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 708
    .line 709
    .line 710
    :cond_21
    :goto_e
    iget-boolean v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 711
    .line 712
    if-eqz v3, :cond_29

    .line 713
    .line 714
    iget-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 715
    .line 716
    if-nez v3, :cond_22

    .line 717
    .line 718
    goto/16 :goto_10

    .line 719
    .line 720
    :cond_22
    iget-boolean v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 721
    .line 722
    if-eqz v3, :cond_23

    .line 723
    .line 724
    iget-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 725
    .line 726
    if-eqz v3, :cond_23

    .line 727
    .line 728
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 729
    .line 730
    if-eqz v3, :cond_23

    .line 731
    .line 732
    return-void

    .line 733
    :cond_23
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 734
    .line 735
    if-nez v3, :cond_24

    .line 736
    .line 737
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 738
    .line 739
    if-ne v3, v5, :cond_24

    .line 740
    .line 741
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 742
    .line 743
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 744
    .line 745
    if-nez v4, :cond_24

    .line 746
    .line 747
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    if-nez v3, :cond_24

    .line 752
    .line 753
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 754
    .line 755
    check-cast v0, Ljava/util/ArrayList;

    .line 756
    .line 757
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 762
    .line 763
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 764
    .line 765
    check-cast v3, Ljava/util/ArrayList;

    .line 766
    .line 767
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 772
    .line 773
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 774
    .line 775
    iget v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 776
    .line 777
    add-int/2addr v0, v3

    .line 778
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 779
    .line 780
    iget v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 781
    .line 782
    add-int/2addr v2, v3

    .line 783
    sub-int v3, v2, v0

    .line 784
    .line 785
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 792
    .line 793
    .line 794
    return-void

    .line 795
    :cond_24
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 796
    .line 797
    if-nez v3, :cond_26

    .line 798
    .line 799
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 800
    .line 801
    if-ne v3, v5, :cond_26

    .line 802
    .line 803
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 804
    .line 805
    if-ne v3, v9, :cond_26

    .line 806
    .line 807
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 808
    .line 809
    check-cast v3, Ljava/util/ArrayList;

    .line 810
    .line 811
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 812
    .line 813
    .line 814
    move-result v3

    .line 815
    if-lez v3, :cond_26

    .line 816
    .line 817
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 818
    .line 819
    check-cast v3, Ljava/util/ArrayList;

    .line 820
    .line 821
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    if-lez v3, :cond_26

    .line 826
    .line 827
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 828
    .line 829
    check-cast v3, Ljava/util/ArrayList;

    .line 830
    .line 831
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v3

    .line 835
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 836
    .line 837
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 838
    .line 839
    check-cast v4, Ljava/util/ArrayList;

    .line 840
    .line 841
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 846
    .line 847
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 848
    .line 849
    iget v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 850
    .line 851
    add-int/2addr v3, v5

    .line 852
    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 853
    .line 854
    iget v5, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 855
    .line 856
    add-int/2addr v4, v5

    .line 857
    sub-int/2addr v4, v3

    .line 858
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 859
    .line 860
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 861
    .line 862
    .line 863
    move-result v3

    .line 864
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 865
    .line 866
    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 867
    .line 868
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 869
    .line 870
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 871
    .line 872
    .line 873
    move-result v3

    .line 874
    if-lez v5, :cond_25

    .line 875
    .line 876
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    :cond_25
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 881
    .line 882
    .line 883
    :cond_26
    iget-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 884
    .line 885
    if-nez v3, :cond_27

    .line 886
    .line 887
    return-void

    .line 888
    :cond_27
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 889
    .line 890
    check-cast v3, Ljava/util/ArrayList;

    .line 891
    .line 892
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 897
    .line 898
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mTargets:Ljava/util/List;

    .line 899
    .line 900
    check-cast v4, Ljava/util/ArrayList;

    .line 901
    .line 902
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 907
    .line 908
    iget v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 909
    .line 910
    iget v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 911
    .line 912
    add-int/2addr v5, v4

    .line 913
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 914
    .line 915
    iget v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 916
    .line 917
    add-int/2addr v9, v8

    .line 918
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 919
    .line 920
    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 921
    .line 922
    if-ne v3, v2, :cond_28

    .line 923
    .line 924
    const/high16 v10, 0x3f000000    # 0.5f

    .line 925
    .line 926
    goto :goto_f

    .line 927
    :cond_28
    move v4, v5

    .line 928
    move v8, v9

    .line 929
    :goto_f
    sub-int/2addr v8, v4

    .line 930
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 931
    .line 932
    sub-int/2addr v8, v0

    .line 933
    int-to-float v0, v4

    .line 934
    const/high16 v2, 0x3f000000    # 0.5f

    .line 935
    .line 936
    add-float/2addr v0, v2

    .line 937
    int-to-float v2, v8

    .line 938
    mul-float/2addr v2, v10

    .line 939
    add-float/2addr v2, v0

    .line 940
    float-to-int v0, v2

    .line 941
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 942
    .line 943
    .line 944
    iget v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 945
    .line 946
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 947
    .line 948
    add-int/2addr v0, v1

    .line 949
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 950
    .line 951
    .line 952
    :cond_29
    :goto_10
    return-void

    .line 953
    :cond_2a
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 954
    .line 955
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 956
    .line 957
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 958
    .line 959
    invoke-virtual {v0, v3, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->updateRunCenter(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 960
    .line 961
    .line 962
    return-void
.end method
