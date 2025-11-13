.class public final Landroidx/recyclerview/widget/FastScroller;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final EMPTY_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I


# instance fields
.field public mAnimationState:I

.field public mDragState:I

.field public final mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

.field public mHorizontalDragX:F

.field public final mHorizontalRange:[I

.field public final mHorizontalThumbCenterX:I

.field public final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public final mHorizontalThumbHeight:I

.field public final mHorizontalThumbWidth:I

.field public final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHorizontalTrackHeight:I

.field public final mMargin:I

.field public final mNeedHorizontalScrollbar:Z

.field public final mNeedVerticalScrollbar:Z

.field public final mOnScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRecyclerViewHeight:I

.field public mRecyclerViewWidth:I

.field public final mScrollbarMinimumRange:I

.field public final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field public mState:I

.field public mVerticalDragY:F

.field public final mVerticalRange:[I

.field public final mVerticalThumbCenterY:I

.field public final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public final mVerticalThumbHeight:I

.field public final mVerticalThumbWidth:I

.field public final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 5

    .line 1
    const/4 p7, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 13
    .line 14
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 17
    .line 18
    new-array v1, p7, [I

    .line 19
    .line 20
    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 21
    .line 22
    new-array v1, p7, [I

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 25
    .line 26
    new-array v1, p7, [F

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 38
    .line 39
    new-instance v2, Landroidx/recyclerview/widget/FastScroller$1;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    .line 45
    .line 46
    new-instance v3, Landroidx/recyclerview/widget/FastScroller$2;

    .line 47
    .line 48
    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 52
    .line 53
    iput-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    iput-object p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 56
    .line 57
    iput-object p5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iput v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iput v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 78
    .line 79
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 88
    .line 89
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 98
    .line 99
    iput p8, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    .line 100
    .line 101
    const/16 p4, 0xff

    .line 102
    .line 103
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    .line 110
    .line 111
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    .line 118
    .line 119
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    if-ne p2, p1, :cond_0

    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :cond_0
    if-eqz p2, :cond_6

    .line 132
    .line 133
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 134
    .line 135
    if-eqz p3, :cond_1

    .line 136
    .line 137
    const-string p4, "Cannot remove item decoration during a scroll  or layout"

    .line 138
    .line 139
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-eqz p3, :cond_3

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    if-ne p3, p7, :cond_2

    .line 160
    .line 161
    const/4 p3, 0x1

    .line 162
    goto :goto_0

    .line 163
    :cond_2
    move p3, v0

    .line 164
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/FastScroller;

    .line 181
    .line 182
    if-ne p3, p0, :cond_4

    .line 183
    .line 184
    const/4 p3, 0x0

    .line 185
    iput-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/FastScroller;

    .line 186
    .line 187
    :cond_4
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 190
    .line 191
    if-eqz p2, :cond_5

    .line 192
    .line 193
    check-cast p2, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :cond_5
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 199
    .line 200
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 201
    .line 202
    .line 203
    :cond_6
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    if-eqz p1, :cond_a

    .line 206
    .line 207
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 208
    .line 209
    if-eqz p2, :cond_7

    .line 210
    .line 211
    const-string p3, "Cannot add item decoration during a scroll  or layout"

    .line 212
    .line 213
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_8

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 225
    .line 226
    .line 227
    :cond_8
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    .line 247
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 248
    .line 249
    if-nez p1, :cond_9

    .line 250
    .line 251
    new-instance p1, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 257
    .line 258
    :cond_9
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 259
    .line 260
    check-cast p0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    :cond_a
    :goto_1
    return-void

    .line 266
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static scrollTo(FF[IIII)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    aget v0, p2, v0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget p2, p2, v1

    .line 6
    .line 7
    sub-int/2addr v0, p2

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sub-float/2addr p1, p0

    .line 12
    int-to-float p0, v0

    .line 13
    div-float/2addr p1, p0

    .line 14
    sub-int/2addr p3, p5

    .line 15
    int-to-float p0, p3

    .line 16
    mul-float/2addr p1, p0

    .line 17
    float-to-int p0, p1

    .line 18
    add-int/2addr p4, p0

    .line 19
    if-ge p4, p3, :cond_1

    .line 20
    .line 21
    if-ltz p4, :cond_1

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    return v1
.end method


# virtual methods
.method public final isPointInsideHorizontalThumb(FF)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    cmpl-float p2, p2, v0

    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 12
    .line 13
    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 14
    .line 15
    div-int/lit8 v0, p0, 0x2

    .line 16
    .line 17
    sub-int v0, p2, v0

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    cmpl-float v0, p1, v0

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    div-int/lit8 p0, p0, 0x2

    .line 25
    .line 26
    add-int/2addr p0, p2

    .line 27
    int-to-float p0, p0

    .line 28
    cmpg-float p0, p1, p0

    .line 29
    .line 30
    if-gtz p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method public final isPointInsideVerticalThumb(FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    int-to-float v0, v3

    .line 19
    cmpg-float p1, p1, v0

    .line 20
    .line 21
    if-gtz p1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 25
    .line 26
    sub-int/2addr v0, v3

    .line 27
    int-to-float v0, v0

    .line 28
    cmpl-float p1, p1, v0

    .line 29
    .line 30
    if-ltz p1, :cond_2

    .line 31
    .line 32
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 33
    .line 34
    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 35
    .line 36
    div-int/lit8 p0, p0, 0x2

    .line 37
    .line 38
    sub-int v0, p1, p0

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    cmpl-float v0, p2, v0

    .line 42
    .line 43
    if-ltz v0, :cond_2

    .line 44
    .line 45
    add-int/2addr p0, p1

    .line 46
    int-to-float p0, p0

    .line 47
    cmpg-float p0, p2, p0

    .line 48
    .line 49
    if-gtz p0, :cond_2

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_2
    return v1
.end method

.method public final setState(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 7
    .line 8
    if-eq v2, v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 11
    .line 12
    sget-object v3, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 34
    .line 35
    if-ne v2, v1, :cond_2

    .line 36
    .line 37
    if-eq p1, v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 40
    .line 41
    sget-object v2, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    const/16 v2, 0x4b0

    .line 54
    .line 55
    int-to-long v2, v2

    .line 56
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, 0x1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    const/16 v2, 0x5dc

    .line 71
    .line 72
    int-to-long v2, v2

    .line 73
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 77
    .line 78
    return-void
.end method

.method public final show()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    new-array v3, v3, [F

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    aput v2, v3, v4

    .line 34
    .line 35
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    .line 37
    aput v2, v3, v0

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    const-wide/16 v1, 0x1f4

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
