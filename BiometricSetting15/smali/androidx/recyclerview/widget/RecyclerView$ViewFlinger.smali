.class public final Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEatRunOnAnimationRequest:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastFlingX:I

.field public mLastFlingY:I

.field public mOverScroller:Landroid/widget/OverScroller;

.field public mReSchedulePostAnimationCallback:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$3;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final fling(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$3;

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v0, Landroid/widget/OverScroller;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 32
    .line 33
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 34
    .line 35
    const/high16 v8, -0x80000000

    .line 36
    .line 37
    const v9, 0x7fffffff

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/high16 v10, -0x80000000

    .line 43
    .line 44
    const v11, 0x7fffffff

    .line 45
    .line 46
    .line 47
    move v6, p1

    .line 48
    move v7, p2

    .line 49
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final postOnAnimation()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v4, 0x0

    .line 21
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 22
    .line 23
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, -0x1

    .line 35
    if-eqz v5, :cond_17

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 46
    .line 47
    sub-int v8, v5, v8

    .line 48
    .line 49
    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 50
    .line 51
    sub-int v9, v7, v9

    .line 52
    .line 53
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 54
    .line 55
    iput v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 56
    .line 57
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 60
    .line 61
    iget-object v10, v5, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v8, v7, v10, v5}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInStretch(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 74
    .line 75
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 76
    .line 77
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-static {v9, v8, v10, v7}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInStretch(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    iget-object v15, v11, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 88
    .line 89
    aput v4, v15, v4

    .line 90
    .line 91
    aput v4, v15, v2

    .line 92
    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    const/4 v14, 0x1

    .line 96
    move v12, v5

    .line 97
    move v13, v7

    .line 98
    invoke-virtual/range {v11 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_1

    .line 103
    .line 104
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 107
    .line 108
    aget v9, v8, v4

    .line 109
    .line 110
    sub-int/2addr v5, v9

    .line 111
    aget v8, v8, v2

    .line 112
    .line 113
    sub-int/2addr v7, v8

    .line 114
    :cond_1
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eq v8, v1, :cond_2

    .line 121
    .line 122
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {v8, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_3

    .line 141
    .line 142
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    .line 144
    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 145
    .line 146
    .line 147
    :cond_3
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    iget-object v14, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 150
    .line 151
    aput v4, v14, v4

    .line 152
    .line 153
    aput v4, v14, v2

    .line 154
    .line 155
    const/4 v15, 0x0

    .line 156
    const/4 v12, 0x0

    .line 157
    const/4 v13, 0x1

    .line 158
    move v9, v15

    .line 159
    move v10, v5

    .line 160
    move v11, v7

    .line 161
    invoke-virtual/range {v8 .. v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(III[II[I)V

    .line 162
    .line 163
    .line 164
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 167
    .line 168
    aget v10, v9, v4

    .line 169
    .line 170
    sub-int/2addr v5, v10

    .line 171
    aget v9, v9, v2

    .line 172
    .line 173
    sub-int/2addr v7, v9

    .line 174
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_4

    .line 179
    .line 180
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 183
    .line 184
    .line 185
    :cond_4
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-ne v8, v9, :cond_5

    .line 194
    .line 195
    move v8, v2

    .line 196
    goto :goto_0

    .line 197
    :cond_5
    move v8, v4

    .line 198
    :goto_0
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-ne v9, v10, :cond_6

    .line 207
    .line 208
    move v9, v2

    .line 209
    goto :goto_1

    .line 210
    :cond_6
    move v9, v4

    .line 211
    :goto_1
    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-nez v10, :cond_9

    .line 216
    .line 217
    if-nez v8, :cond_7

    .line 218
    .line 219
    if-eqz v5, :cond_8

    .line 220
    .line 221
    :cond_7
    if-nez v9, :cond_9

    .line 222
    .line 223
    if-eqz v7, :cond_8

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_8
    move v8, v4

    .line 227
    goto :goto_3

    .line 228
    :cond_9
    :goto_2
    move v8, v2

    .line 229
    :goto_3
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 230
    .line 231
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 232
    .line 233
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 234
    .line 235
    if-eqz v10, :cond_a

    .line 236
    .line 237
    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    .line 238
    .line 239
    if-eqz v10, :cond_a

    .line 240
    .line 241
    goto/16 :goto_8

    .line 242
    .line 243
    :cond_a
    if-eqz v8, :cond_16

    .line 244
    .line 245
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-eq v8, v1, :cond_14

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    float-to-int v3, v3

    .line 256
    if-gez v5, :cond_b

    .line 257
    .line 258
    neg-int v5, v3

    .line 259
    goto :goto_4

    .line 260
    :cond_b
    if-lez v5, :cond_c

    .line 261
    .line 262
    move v5, v3

    .line 263
    goto :goto_4

    .line 264
    :cond_c
    move v5, v4

    .line 265
    :goto_4
    if-gez v7, :cond_d

    .line 266
    .line 267
    neg-int v3, v3

    .line 268
    goto :goto_5

    .line 269
    :cond_d
    if-lez v7, :cond_e

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_e
    move v3, v4

    .line 273
    :goto_5
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    if-gez v5, :cond_f

    .line 279
    .line 280
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 281
    .line 282
    .line 283
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 284
    .line 285
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_10

    .line 290
    .line 291
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 292
    .line 293
    neg-int v9, v5

    .line 294
    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_f
    if-lez v5, :cond_10

    .line 299
    .line 300
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 301
    .line 302
    .line 303
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 304
    .line 305
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    if-eqz v8, :cond_10

    .line 310
    .line 311
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 312
    .line 313
    invoke-virtual {v8, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 314
    .line 315
    .line 316
    :cond_10
    :goto_6
    if-gez v3, :cond_11

    .line 317
    .line 318
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 319
    .line 320
    .line 321
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 322
    .line 323
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_12

    .line 328
    .line 329
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 330
    .line 331
    neg-int v9, v3

    .line 332
    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 333
    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_11
    if-lez v3, :cond_12

    .line 337
    .line 338
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 339
    .line 340
    .line 341
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 342
    .line 343
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-eqz v8, :cond_12

    .line 348
    .line 349
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 350
    .line 351
    invoke-virtual {v8, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 352
    .line 353
    .line 354
    :cond_12
    :goto_7
    if-nez v5, :cond_13

    .line 355
    .line 356
    if-eqz v3, :cond_14

    .line 357
    .line 358
    :cond_13
    invoke-virtual {v7}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 359
    .line 360
    .line 361
    :cond_14
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 362
    .line 363
    if-eqz v3, :cond_17

    .line 364
    .line 365
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 366
    .line 367
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 368
    .line 369
    iget-object v5, v3, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 370
    .line 371
    if-eqz v5, :cond_15

    .line 372
    .line 373
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 374
    .line 375
    .line 376
    :cond_15
    iput v4, v3, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_16
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 380
    .line 381
    .line 382
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 383
    .line 384
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 385
    .line 386
    if-eqz v5, :cond_17

    .line 387
    .line 388
    invoke-virtual {v5, v3, v4, v15}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 389
    .line 390
    .line 391
    :cond_17
    :goto_9
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 392
    .line 393
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 394
    .line 395
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 396
    .line 397
    if-eqz v3, :cond_34

    .line 398
    .line 399
    iget-boolean v5, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    .line 400
    .line 401
    if-eqz v5, :cond_34

    .line 402
    .line 403
    iget-object v5, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 404
    .line 405
    iget v7, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    .line 406
    .line 407
    if-eq v7, v6, :cond_18

    .line 408
    .line 409
    if-nez v5, :cond_19

    .line 410
    .line 411
    :cond_18
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 412
    .line 413
    .line 414
    :cond_19
    iget-boolean v7, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    .line 415
    .line 416
    const/4 v8, 0x0

    .line 417
    if-eqz v7, :cond_1f

    .line 418
    .line 419
    iget-object v7, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    .line 420
    .line 421
    if-nez v7, :cond_1f

    .line 422
    .line 423
    iget-object v7, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 424
    .line 425
    if-eqz v7, :cond_1f

    .line 426
    .line 427
    iget v7, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    .line 428
    .line 429
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    if-eqz v7, :cond_1f

    .line 434
    .line 435
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 436
    .line 437
    cmpl-float v10, v9, v8

    .line 438
    .line 439
    if-nez v10, :cond_1a

    .line 440
    .line 441
    iget v10, v7, Landroid/graphics/PointF;->y:F

    .line 442
    .line 443
    cmpl-float v10, v10, v8

    .line 444
    .line 445
    if-eqz v10, :cond_1f

    .line 446
    .line 447
    :cond_1a
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    float-to-int v9, v9

    .line 452
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 453
    .line 454
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    float-to-int v7, v7

    .line 459
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 463
    .line 464
    .line 465
    const-string v10, "RV Scroll"

    .line 466
    .line 467
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v10, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 471
    .line 472
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 473
    .line 474
    .line 475
    move-result v11

    .line 476
    if-ne v11, v1, :cond_1b

    .line 477
    .line 478
    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    .line 479
    .line 480
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 481
    .line 482
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 486
    .line 487
    .line 488
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_1b
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    :goto_a
    if-eqz v9, :cond_1c

    .line 502
    .line 503
    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 504
    .line 505
    iget-object v10, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 506
    .line 507
    iget-object v11, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 508
    .line 509
    invoke-virtual {v1, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 510
    .line 511
    .line 512
    :cond_1c
    if-eqz v7, :cond_1d

    .line 513
    .line 514
    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 515
    .line 516
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 517
    .line 518
    iget-object v10, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 519
    .line 520
    invoke-virtual {v1, v7, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 521
    .line 522
    .line 523
    :cond_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 524
    .line 525
    .line 526
    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 527
    .line 528
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    move v7, v4

    .line 533
    :goto_b
    if-ge v7, v1, :cond_1e

    .line 534
    .line 535
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 536
    .line 537
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)V

    .line 542
    .line 543
    .line 544
    add-int/2addr v7, v2

    .line 545
    goto :goto_b

    .line 546
    :cond_1e
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 550
    .line 551
    .line 552
    :cond_1f
    iput-boolean v4, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    .line 553
    .line 554
    iget-object v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    .line 555
    .line 556
    iget-object v7, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 557
    .line 558
    if-eqz v1, :cond_2c

    .line 559
    .line 560
    iget-object v9, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 561
    .line 562
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)V

    .line 566
    .line 567
    .line 568
    iget v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    .line 569
    .line 570
    if-ne v6, v1, :cond_2b

    .line 571
    .line 572
    iget-object v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    .line 573
    .line 574
    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 575
    .line 576
    iget-object v9, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 577
    .line 578
    if-eqz v9, :cond_22

    .line 579
    .line 580
    iget v9, v9, Landroid/graphics/PointF;->x:F

    .line 581
    .line 582
    cmpl-float v9, v9, v8

    .line 583
    .line 584
    if-nez v9, :cond_20

    .line 585
    .line 586
    goto :goto_c

    .line 587
    :cond_20
    if-lez v9, :cond_21

    .line 588
    .line 589
    move v9, v2

    .line 590
    goto :goto_d

    .line 591
    :cond_21
    move v9, v6

    .line 592
    goto :goto_d

    .line 593
    :cond_22
    :goto_c
    move v9, v4

    .line 594
    :goto_d
    iget-object v10, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 595
    .line 596
    if-eqz v10, :cond_24

    .line 597
    .line 598
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 599
    .line 600
    .line 601
    move-result v11

    .line 602
    if-nez v11, :cond_23

    .line 603
    .line 604
    goto :goto_e

    .line 605
    :cond_23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 606
    .line 607
    .line 608
    move-result-object v11

    .line 609
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 610
    .line 611
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 612
    .line 613
    .line 614
    move-result v12

    .line 615
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 616
    .line 617
    .line 618
    move-result-object v13

    .line 619
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 620
    .line 621
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 622
    .line 623
    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 624
    .line 625
    sub-int/2addr v12, v13

    .line 626
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 627
    .line 628
    sub-int/2addr v12, v13

    .line 629
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 630
    .line 631
    .line 632
    move-result v13

    .line 633
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 634
    .line 635
    .line 636
    move-result-object v14

    .line 637
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 638
    .line 639
    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 640
    .line 641
    iget v14, v14, Landroid/graphics/Rect;->right:I

    .line 642
    .line 643
    add-int/2addr v13, v14

    .line 644
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 645
    .line 646
    add-int/2addr v13, v11

    .line 647
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 648
    .line 649
    .line 650
    move-result v11

    .line 651
    iget v14, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 652
    .line 653
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 654
    .line 655
    .line 656
    move-result v10

    .line 657
    sub-int/2addr v14, v10

    .line 658
    invoke-static {v12, v13, v11, v14, v9}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    .line 659
    .line 660
    .line 661
    move-result v9

    .line 662
    goto :goto_f

    .line 663
    :cond_24
    :goto_e
    move v9, v4

    .line 664
    :goto_f
    iget-object v10, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 665
    .line 666
    if-eqz v10, :cond_26

    .line 667
    .line 668
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 669
    .line 670
    cmpl-float v10, v10, v8

    .line 671
    .line 672
    if-nez v10, :cond_25

    .line 673
    .line 674
    goto :goto_10

    .line 675
    :cond_25
    if-lez v10, :cond_27

    .line 676
    .line 677
    move v6, v2

    .line 678
    goto :goto_11

    .line 679
    :cond_26
    :goto_10
    move v6, v4

    .line 680
    :cond_27
    :goto_11
    iget-object v10, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 681
    .line 682
    if-eqz v10, :cond_29

    .line 683
    .line 684
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 685
    .line 686
    .line 687
    move-result v11

    .line 688
    if-nez v11, :cond_28

    .line 689
    .line 690
    goto :goto_12

    .line 691
    :cond_28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 692
    .line 693
    .line 694
    move-result-object v11

    .line 695
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 696
    .line 697
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 698
    .line 699
    .line 700
    move-result v12

    .line 701
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 702
    .line 703
    .line 704
    move-result-object v13

    .line 705
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 706
    .line 707
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 708
    .line 709
    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 710
    .line 711
    sub-int/2addr v12, v13

    .line 712
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 713
    .line 714
    sub-int/2addr v12, v13

    .line 715
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 716
    .line 717
    .line 718
    move-result v13

    .line 719
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 724
    .line 725
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 726
    .line 727
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 728
    .line 729
    add-int/2addr v13, v1

    .line 730
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 731
    .line 732
    add-int/2addr v13, v1

    .line 733
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    iget v11, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 738
    .line 739
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 740
    .line 741
    .line 742
    move-result v10

    .line 743
    sub-int/2addr v11, v10

    .line 744
    invoke-static {v12, v13, v1, v11, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    goto :goto_13

    .line 749
    :cond_29
    :goto_12
    move v1, v4

    .line 750
    :goto_13
    mul-int v6, v9, v9

    .line 751
    .line 752
    mul-int v10, v1, v1

    .line 753
    .line 754
    add-int/2addr v10, v6

    .line 755
    int-to-double v10, v10

    .line 756
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 757
    .line 758
    .line 759
    move-result-wide v10

    .line 760
    double-to-int v6, v10

    .line 761
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    int-to-double v10, v6

    .line 766
    const-wide v12, 0x3fd57a786c22680aL    # 0.3356

    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    div-double/2addr v10, v12

    .line 772
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 773
    .line 774
    .line 775
    move-result-wide v10

    .line 776
    double-to-int v6, v10

    .line 777
    if-lez v6, :cond_2a

    .line 778
    .line 779
    neg-int v9, v9

    .line 780
    neg-int v1, v1

    .line 781
    iget-object v10, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 782
    .line 783
    iput v9, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 784
    .line 785
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 786
    .line 787
    iput v6, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 788
    .line 789
    iput-object v10, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 790
    .line 791
    iput-boolean v2, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 792
    .line 793
    :cond_2a
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 797
    .line 798
    .line 799
    goto :goto_14

    .line 800
    :cond_2b
    const-string v1, "RecyclerView"

    .line 801
    .line 802
    const-string v6, "Passed over target position while smooth scrolling."

    .line 803
    .line 804
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .line 806
    .line 807
    const/4 v1, 0x0

    .line 808
    iput-object v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    .line 809
    .line 810
    :cond_2c
    :goto_14
    iget-boolean v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    .line 811
    .line 812
    if-eqz v1, :cond_34

    .line 813
    .line 814
    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 815
    .line 816
    iget-object v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 817
    .line 818
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 819
    .line 820
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-nez v1, :cond_2d

    .line 825
    .line 826
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_16

    .line 830
    .line 831
    :cond_2d
    iget v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 832
    .line 833
    mul-int v6, v1, v1

    .line 834
    .line 835
    if-gtz v6, :cond_2e

    .line 836
    .line 837
    move v1, v4

    .line 838
    :cond_2e
    iput v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 839
    .line 840
    iget v6, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 841
    .line 842
    mul-int v9, v6, v6

    .line 843
    .line 844
    if-gtz v9, :cond_2f

    .line 845
    .line 846
    move v6, v4

    .line 847
    :cond_2f
    iput v6, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 848
    .line 849
    if-nez v1, :cond_32

    .line 850
    .line 851
    if-nez v6, :cond_32

    .line 852
    .line 853
    iget v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    .line 854
    .line 855
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    if-eqz v1, :cond_31

    .line 860
    .line 861
    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 862
    .line 863
    cmpl-float v9, v6, v8

    .line 864
    .line 865
    if-nez v9, :cond_30

    .line 866
    .line 867
    iget v9, v1, Landroid/graphics/PointF;->y:F

    .line 868
    .line 869
    cmpl-float v8, v9, v8

    .line 870
    .line 871
    if-nez v8, :cond_30

    .line 872
    .line 873
    goto :goto_15

    .line 874
    :cond_30
    mul-float/2addr v6, v6

    .line 875
    iget v8, v1, Landroid/graphics/PointF;->y:F

    .line 876
    .line 877
    mul-float/2addr v8, v8

    .line 878
    add-float/2addr v8, v6

    .line 879
    float-to-double v8, v8

    .line 880
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 881
    .line 882
    .line 883
    move-result-wide v8

    .line 884
    double-to-float v6, v8

    .line 885
    iget v8, v1, Landroid/graphics/PointF;->x:F

    .line 886
    .line 887
    div-float/2addr v8, v6

    .line 888
    iput v8, v1, Landroid/graphics/PointF;->x:F

    .line 889
    .line 890
    iget v9, v1, Landroid/graphics/PointF;->y:F

    .line 891
    .line 892
    div-float/2addr v9, v6

    .line 893
    iput v9, v1, Landroid/graphics/PointF;->y:F

    .line 894
    .line 895
    iput-object v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 896
    .line 897
    const v1, 0x461c4000    # 10000.0f

    .line 898
    .line 899
    .line 900
    mul-float/2addr v8, v1

    .line 901
    float-to-int v6, v8

    .line 902
    iput v6, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 903
    .line 904
    mul-float/2addr v9, v1

    .line 905
    float-to-int v1, v9

    .line 906
    iput v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 907
    .line 908
    const/16 v1, 0x2710

    .line 909
    .line 910
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    iget v6, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 915
    .line 916
    int-to-float v6, v6

    .line 917
    const v8, 0x3f99999a    # 1.2f

    .line 918
    .line 919
    .line 920
    mul-float/2addr v6, v8

    .line 921
    float-to-int v6, v6

    .line 922
    iget v9, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 923
    .line 924
    int-to-float v9, v9

    .line 925
    mul-float/2addr v9, v8

    .line 926
    float-to-int v9, v9

    .line 927
    int-to-float v1, v1

    .line 928
    mul-float/2addr v1, v8

    .line 929
    float-to-int v1, v1

    .line 930
    iget-object v8, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 931
    .line 932
    iput v6, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 933
    .line 934
    iput v9, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 935
    .line 936
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 937
    .line 938
    iput-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 939
    .line 940
    iput-boolean v2, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 941
    .line 942
    goto :goto_16

    .line 943
    :cond_31
    :goto_15
    iget v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    .line 944
    .line 945
    iput v1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 946
    .line 947
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    .line 948
    .line 949
    .line 950
    :cond_32
    :goto_16
    iget v1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 951
    .line 952
    if-ltz v1, :cond_33

    .line 953
    .line 954
    move v1, v2

    .line 955
    goto :goto_17

    .line 956
    :cond_33
    move v1, v4

    .line 957
    :goto_17
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 958
    .line 959
    .line 960
    if-eqz v1, :cond_34

    .line 961
    .line 962
    iget-boolean v1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    .line 963
    .line 964
    if-eqz v1, :cond_34

    .line 965
    .line 966
    iput-boolean v2, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    .line 967
    .line 968
    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    .line 969
    .line 970
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 971
    .line 972
    .line 973
    :cond_34
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 974
    .line 975
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 976
    .line 977
    if-eqz v1, :cond_35

    .line 978
    .line 979
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 980
    .line 981
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 982
    .line 983
    .line 984
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 985
    .line 986
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 987
    .line 988
    invoke-virtual {v1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 989
    .line 990
    .line 991
    goto :goto_18

    .line 992
    :cond_35
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 993
    .line 994
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 995
    .line 996
    .line 997
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 998
    .line 999
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 1000
    .line 1001
    .line 1002
    :goto_18
    return-void
.end method

.method public final smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 8

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p3, v0, :cond_3

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-le p3, v0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    :goto_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move p3, v0

    .line 36
    :goto_2
    int-to-float p3, p3

    .line 37
    int-to-float v0, v3

    .line 38
    div-float/2addr p3, v0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr p3, v0

    .line 42
    const/high16 v0, 0x43960000    # 300.0f

    .line 43
    .line 44
    mul-float/2addr p3, v0

    .line 45
    float-to-int p3, p3

    .line 46
    const/16 v0, 0x7d0

    .line 47
    .line 48
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    :cond_3
    move v7, p3

    .line 53
    if-nez p4, :cond_4

    .line 54
    .line 55
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$3;

    .line 56
    .line 57
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    if-eq p3, p4, :cond_5

    .line 60
    .line 61
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    .line 63
    new-instance p3, Landroid/widget/OverScroller;

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 72
    .line 73
    .line 74
    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 75
    .line 76
    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 77
    .line 78
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 79
    .line 80
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    const/4 p4, 0x2

    .line 83
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    move v5, p1

    .line 91
    move v6, p2

    .line 92
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 96
    .line 97
    .line 98
    return-void
.end method
