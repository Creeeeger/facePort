.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.33f

.field private static final greylist-max-o MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final greylist-max-o NO_POSITION:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private blacklist mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private greylist mAreAllItemsSelectable:Z

.field private final greylist-max-o mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field greylist mDivider:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mDividerHeight:I

.field private greylist-max-o mDividerIsOpaque:Z

.field private greylist-max-o mDividerPaint:Landroid/graphics/Paint;

.field private blacklist mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private greylist-max-o mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private greylist-max-o mFooterDividersEnabled:Z

.field greylist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeaderDividersEnabled:Z

.field greylist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsCacheColorOpaque:Z

.field private greylist-max-o mItemsCanFocus:Z

.field greylist-max-o mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDndListAnimator(Landroid/widget/ListView;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 254
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 259
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    nop

    .line 193
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 194
    nop

    .line 195
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 217
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 222
    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 264
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 266
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->ListView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 269
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 270
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 271
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 275
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 278
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 282
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 287
    .local v6, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 288
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 293
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 295
    .local v1, "dividerHeight":I
    if-eqz v1, :cond_4

    .line 296
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 300
    .end local v1    # "dividerHeight":I
    :cond_4
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 301
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 303
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 304
    return-void
.end method

.method private greylist-max-o addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3530
    add-int/lit8 v8, p2, -0x1

    .line 3531
    .local v8, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3532
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v10, v0, v1

    .line 3533
    .local v10, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3535
    return-object v9
.end method

.method private greylist-max-o addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3539
    add-int/lit8 v8, p2, 0x1

    .line 3540
    .local v8, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3541
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v10, v0, v1

    .line 3542
    .local v10, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3544
    return-object v9
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .locals 5

    .line 319
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 322
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 325
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 328
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 330
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 333
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 335
    :cond_0
    if-gez v2, :cond_3

    .line 337
    const/4 v2, 0x0

    goto :goto_0

    .line 341
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 342
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 344
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_2

    .line 347
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 350
    :cond_2
    if-lez v2, :cond_3

    .line 351
    const/4 v2, 0x0

    .line 355
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 356
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 359
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4
    return-void
.end method

.method private greylist-max-o amountToScroll(II)I
    .locals 10
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 3131
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 3132
    .local v0, "listBottom":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 3134
    .local v1, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3136
    .local v2, "numChildren":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_6

    .line 3137
    add-int/lit8 v5, v2, -0x1

    .line 3138
    .local v5, "indexToMakeVisible":I
    if-eq p2, v3, :cond_0

    .line 3139
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 3141
    :cond_0
    :goto_0
    if-gt v2, v5, :cond_1

    .line 3143
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 3144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3146
    :cond_1
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3147
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3149
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 3150
    .local v8, "goalBottom":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_2

    .line 3151
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 3154
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v8, :cond_3

    .line 3156
    return v4

    .line 3159
    :cond_3
    if-eq p2, v3, :cond_4

    .line 3160
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v8, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_4

    .line 3162
    return v4

    .line 3165
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v8

    .line 3167
    .local v3, "amountToScroll":I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v2

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v4, v9, :cond_5

    .line 3169
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v0

    .line 3170
    .local v4, "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3173
    .end local v4    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 3175
    .end local v3    # "amountToScroll":I
    .end local v5    # "indexToMakeVisible":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalBottom":I
    :cond_6
    const/4 v5, 0x0

    .line 3176
    .restart local v5    # "indexToMakeVisible":I
    if-eq p2, v3, :cond_7

    .line 3177
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 3179
    :cond_7
    :goto_1
    if-gez v5, :cond_8

    .line 3181
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 3182
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3183
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    goto :goto_1

    .line 3185
    :cond_8
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3186
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3187
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 3188
    .local v8, "goalTop":I
    if-lez v6, :cond_9

    .line 3189
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 3191
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v9, v8, :cond_a

    .line 3193
    return v4

    .line 3196
    :cond_a
    if-eq p2, v3, :cond_b

    .line 3197
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_b

    .line 3199
    return v4

    .line 3202
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v8, v3

    .line 3203
    .restart local v3    # "amountToScroll":I
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v9, :cond_c

    .line 3205
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v1, v4

    .line 3206
    .restart local v4    # "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3208
    .end local v4    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private greylist-max-o amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 3400
    const/4 v0, 0x0

    .line 3401
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3402
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3403
    const/16 v1, 0x21

    if-ne p1, v1, :cond_0

    .line 3404
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_1

    .line 3405
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 3406
    if-lez p3, :cond_1

    .line 3407
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 3411
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3412
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_1

    .line 3413
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3414
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    .line 3415
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3419
    .end local v1    # "listBottom":I
    :cond_1
    :goto_0
    return v0
.end method

.method private greylist-max-o arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 7
    .param p1, "direction"    # I

    .line 3298
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3300
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x82

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3301
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3302
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3303
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_7

    .line 3304
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 3305
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3306
    .local v2, "topFadingEdgeShowing":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3307
    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    add-int/2addr v4, v5

    .line 3309
    .local v4, "listTop":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 3310
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2

    .line 3311
    :cond_3
    move v5, v4

    :goto_2
    nop

    .line 3312
    .local v5, "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3313
    .end local v2    # "topFadingEdgeShowing":Z
    .end local v4    # "listTop":I
    .end local v5    # "ySearchPoint":I
    goto :goto_6

    .line 3314
    :cond_4
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3315
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    .line 3316
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 3317
    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    sub-int/2addr v4, v5

    .line 3319
    .local v4, "listBottom":I
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v4, :cond_7

    .line 3320
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_5

    .line 3321
    :cond_7
    move v5, v4

    :goto_5
    nop

    .line 3322
    .restart local v5    # "ySearchPoint":I
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3324
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v5    # "ySearchPoint":I
    :goto_6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 3327
    .local v2, "newFocus":Landroid/view/View;
    :goto_7
    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 3328
    invoke-direct {p0, v2}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 3332
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a

    .line 3333
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 3334
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v5, v4, :cond_9

    :cond_8
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a

    if-le v5, v4, :cond_a

    .line 3337
    :cond_9
    return-object v3

    .line 3341
    .end local v5    # "selectablePosition":I
    :cond_a
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3343
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    .line 3344
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_b

    .line 3346
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3347
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3348
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3349
    :cond_b
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_c

    .line 3354
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3355
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3356
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3359
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_c
    return-object v3
.end method

.method private greylist-max-o arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 2906
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2907
    return v1

    .line 2910
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2911
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2913
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2914
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2917
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 2918
    .local v5, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_0
    if-eqz v5, :cond_2

    .line 2919
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2920
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 2923
    :cond_2
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v1

    .line 2924
    .local v7, "needToRedraw":Z
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    .line 2925
    if-eqz v5, :cond_4

    move v9, v6

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2926
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2927
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2928
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2929
    move v2, v3

    .line 2930
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_5

    if-nez v5, :cond_5

    .line 2933
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    .line 2934
    .local v9, "focused":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 2935
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2938
    .end local v9    # "focused":Landroid/view/View;
    :cond_5
    const/4 v7, 0x1

    .line 2939
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2942
    :cond_6
    if-lez v4, :cond_8

    .line 2944
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2946
    const/16 v9, 0x21

    if-ne p1, v9, :cond_7

    move v9, v4

    goto :goto_3

    :cond_7
    neg-int v9, v4

    :goto_3
    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2947
    const/4 v7, 0x1

    .line 2952
    :cond_8
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_a

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    .line 2953
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2954
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 2955
    .restart local v9    # "focused":Landroid/view/View;
    if-eqz v9, :cond_a

    .line 2956
    invoke-direct {p0, v9, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v9}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_a

    .line 2957
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2963
    .end local v9    # "focused":Landroid/view/View;
    :cond_a
    if-ne v3, v8, :cond_b

    if-eqz v0, :cond_b

    .line 2964
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2965
    const/4 v0, 0x0

    .line 2967
    iget-object v9, p0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 2969
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2973
    iput v8, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2976
    :cond_b
    if-eqz v7, :cond_e

    .line 2977
    if-eqz v0, :cond_c

    .line 2978
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2979
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2981
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2982
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2984
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2985
    return v6

    .line 2988
    :cond_e
    return v1
.end method

.method private greylist-max-o clearRecycledState(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 662
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 664
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 665
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 666
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 667
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 664
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2537
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_19

    .line 2541
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2542
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2545
    :cond_1
    const/4 v0, 0x0

    .line 2546
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2547
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 2548
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 2549
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2550
    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2551
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2552
    const/4 v0, 0x1

    .line 2556
    :cond_2
    iget-boolean v3, p0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-eqz v3, :cond_3

    .line 2557
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    .line 2558
    const-string v3, "ListView"

    const-string/jumbo v5, "mIsHoveredByMouse false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    :cond_3
    if-nez v0, :cond_22

    if-eq v2, v4, :cond_22

    .line 2563
    const/4 v3, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_18

    .line 2648
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2649
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v4

    :goto_1
    move v0, v3

    goto/16 :goto_18

    .line 2642
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2643
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v4

    :goto_3
    move v0, v3

    goto/16 :goto_18

    .line 2634
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2635
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v3, v1

    goto :goto_5

    :cond_9
    :goto_4
    move v3, v4

    :goto_5
    move v0, v3

    goto/16 :goto_18

    .line 2636
    :cond_a
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2637
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    move v3, v1

    goto :goto_7

    :cond_c
    :goto_6
    move v3, v4

    :goto_7
    move v0, v3

    goto/16 :goto_18

    .line 2626
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2627
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v1

    goto :goto_9

    :cond_e
    :goto_8
    move v3, v4

    :goto_9
    move v0, v3

    goto/16 :goto_18

    .line 2628
    :cond_f
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2629
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move v3, v1

    goto :goto_b

    :cond_11
    :goto_a
    move v3, v4

    :goto_b
    move v0, v3

    goto/16 :goto_18

    .line 2658
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2659
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_c

    :cond_12
    move v3, v1

    goto :goto_d

    :cond_13
    :goto_c
    move v3, v4

    :goto_d
    move v0, v3

    goto/16 :goto_18

    .line 2660
    :cond_14
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2661
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    :cond_15
    move v3, v1

    goto :goto_f

    :cond_16
    :goto_e
    move v3, v4

    :goto_f
    move v0, v3

    goto/16 :goto_18

    .line 2614
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2616
    :cond_17
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2618
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    .line 2620
    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    goto/16 :goto_18

    .line 2605
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2607
    :cond_18
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2609
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_18

    .line 2585
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_12

    .line 2599
    :cond_19
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2600
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_10

    :cond_1a
    move v3, v1

    goto :goto_11

    :cond_1b
    :goto_10
    move v3, v4

    :goto_11
    move v0, v3

    goto :goto_18

    .line 2587
    :cond_1c
    :goto_12
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2589
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2590
    if-nez v0, :cond_22

    .line 2591
    :goto_13
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .local v3, "count":I
    if-lez p2, :cond_21

    .line 2592
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 2593
    const/4 v0, 0x1

    move p2, v3

    goto :goto_13

    .line 2565
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-nez v6, :cond_20

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_16

    .line 2579
    :cond_1d
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2580
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_14

    :cond_1e
    move v3, v1

    goto :goto_15

    :cond_1f
    :goto_14
    move v3, v4

    :goto_15
    move v0, v3

    goto :goto_18

    .line 2567
    :cond_20
    :goto_16
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    .line 2569
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2570
    if-nez v0, :cond_22

    .line 2571
    :goto_17
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .restart local v3    # "count":I
    if-lez p2, :cond_21

    .line 2572
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 2573
    const/4 v0, 0x1

    move p2, v3

    goto :goto_17

    .line 2667
    :cond_21
    move p2, v3

    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_22
    :goto_18
    if-eqz v0, :cond_23

    .line 2668
    return v4

    .line 2671
    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2672
    return v4

    .line 2675
    :cond_24
    packed-switch v2, :pswitch_data_0

    .line 2686
    return v1

    .line 2683
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2680
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2677
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2538
    .end local v0    # "handled":Z
    .end local v2    # "action":I
    :cond_25
    :goto_19
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-p correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .line 1575
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1576
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1579
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1582
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1585
    .local v2, "lastBottom":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1589
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1590
    .local v4, "bottomOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1591
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1595
    .local v6, "firstTop":I
    if-lez v4, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_2

    .line 1596
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1598
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1601
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1602
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1605
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1607
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1612
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastBottom":I
    .end local v3    # "end":I
    .end local v4    # "bottomOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstTop":I
    :cond_2
    return-void
.end method

.method private greylist-max-p correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .line 1625
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    .line 1628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1631
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1634
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1637
    .local v2, "start":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1641
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 1642
    .local v4, "topOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1643
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1644
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 1648
    .local v7, "lastPosition":I
    if-lez v4, :cond_3

    .line 1649
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-le v6, v3, :cond_0

    goto :goto_0

    .line 1663
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    .line 1664
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_1

    .line 1650
    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    .line 1652
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1655
    :cond_2
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1656
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    .line 1659
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1661
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1668
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_3
    :goto_1
    return-void
.end method

.method private greylist-max-o distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .line 3430
    const/4 v0, 0x0

    .line 3431
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3432
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3433
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3434
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3435
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 3436
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_1

    .line 3437
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    .line 3439
    :cond_1
    :goto_0
    return v0
.end method

.method private greylist-max-o fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 935
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 936
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 937
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 938
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 939
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 941
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 942
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 943
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 945
    :goto_0
    return-void
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    .line 819
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 820
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 823
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v3, :cond_3

    .line 825
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    .line 826
    .local v8, "selected":Z
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 828
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v3, v4

    .line 829
    if-eqz v8, :cond_2

    .line 830
    move-object v0, v2

    .line 832
    :cond_2
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 833
    goto :goto_0

    .line 835
    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 836
    return-object v0
.end method

.method private greylist-max-o fillFromMiddle(II)Landroid/view/View;
    .locals 8
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 903
    sub-int v0, p2, p1

    .line 905
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v7

    .line 907
    .local v7, "position":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 909
    .local v1, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 911
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 912
    .local v2, "selHeight":I
    if-gt v2, v0, :cond_0

    .line 913
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 916
    :cond_0
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 918
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 919
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_0

    .line 921
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 924
    :goto_0
    return-object v1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .locals 10
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 959
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 960
    .local v0, "fadingEdgeLength":I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 964
    .local v7, "selectedPosition":I
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 966
    .local v8, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v9

    .line 969
    .local v9, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 973
    .local v1, "sel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_0

    .line 976
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v8

    .line 980
    .local v2, "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    .line 981
    .local v3, "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 984
    .local v4, "offset":I
    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    goto :goto_0

    .line 985
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v8, :cond_1

    .line 988
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v8, v2

    .line 992
    .restart local v2    # "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v9, v3

    .line 993
    .restart local v3    # "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 996
    .restart local v4    # "offset":I
    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 985
    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    :cond_1
    :goto_0
    nop

    .line 1000
    :goto_1
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1002
    iget-boolean v2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_2

    .line 1003
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_2

    .line 1005
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1008
    :goto_2
    return-object v1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .locals 2
    .param p1, "nextTop"    # I

    .line 883
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 884
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 885
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 888
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-p fillSpecific(II)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 1526
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1527
    .local v0, "tempIsSelected":Z
    :goto_0
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1529
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1534
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1535
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    .line 1536
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1538
    .local v3, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1539
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1540
    .local v4, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1541
    .local v5, "childCount":I
    if-lez v5, :cond_1

    .line 1542
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1544
    .end local v5    # "childCount":I
    :cond_1
    goto :goto_1

    .line 1545
    .end local v3    # "above":Landroid/view/View;
    .end local v4    # "below":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1547
    .restart local v4    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1548
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1549
    .restart local v3    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1550
    .restart local v5    # "childCount":I
    if-lez v5, :cond_3

    .line 1551
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1555
    .end local v5    # "childCount":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1556
    return-object v1

    .line 1557
    :cond_4
    if-eqz v3, :cond_5

    .line 1558
    return-object v3

    .line 1560
    :cond_5
    return-object v4
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 851
    const/4 v0, 0x0

    .line 853
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 854
    .local v1, "end":I
    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 855
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 858
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le p2, v1, :cond_3

    if-ltz p1, :cond_3

    .line 860
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    .line 861
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 862
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v3, v4

    .line 863
    if-eqz v8, :cond_2

    .line 864
    move-object v0, v2

    .line 866
    :cond_2
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, -0x1

    .line 867
    goto :goto_0

    .line 869
    :cond_3
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 870
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 871
    return-object v0
.end method

.method private greylist-max-o getArrowScrollPreviewLength()I
    .locals 2

    .line 3115
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1021
    move v0, p1

    .line 1022
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1023
    sub-int/2addr v0, p2

    .line 1025
    :cond_0
    return v0
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1038
    move v0, p1

    .line 1039
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 1040
    add-int/2addr v0, p2

    .line 1042
    :cond_0
    return v0
.end method

.method private greylist-max-o handleHorizontalFocusWithinListItem(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2793
    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2794
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2798
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2799
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 2800
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 2801
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 2804
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2805
    .local v2, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2807
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 2810
    if-eqz v2, :cond_2

    .line 2811
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2812
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2813
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2816
    :cond_2
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2817
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->playSoundEffect(I)V

    .line 2818
    const/4 v4, 0x1

    return v4

    .line 2826
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2827
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2826
    invoke-virtual {v4, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2828
    .local v4, "globalNextFocus":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 2829
    invoke-direct {p0, v4, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 2833
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v2    # "currentFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    .end local v4    # "globalNextFocus":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 3006
    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 3017
    const/4 v0, 0x0

    .line 3018
    .local v0, "topSelected":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3019
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 3020
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x21

    if-ne p2, v3, :cond_0

    .line 3021
    move v3, v2

    .line 3022
    .local v3, "topViewIndex":I
    move v4, v1

    .line 3023
    .local v4, "bottomViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3024
    .local v5, "topView":Landroid/view/View;
    move-object v6, p1

    .line 3025
    .local v6, "bottomView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_0

    .line 3027
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    :cond_0
    move v3, v1

    .line 3028
    .restart local v3    # "topViewIndex":I
    move v4, v2

    .line 3029
    .restart local v4    # "bottomViewIndex":I
    move-object v5, p1

    .line 3030
    .restart local v5    # "topView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3033
    .restart local v6    # "bottomView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3036
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    .line 3037
    if-nez p4, :cond_1

    if-eqz v0, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 3038
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3042
    :cond_2
    if-eqz v6, :cond_4

    .line 3043
    if-nez p4, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3044
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3046
    :cond_4
    return-void

    .line 3007
    .end local v0    # "topSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 2175
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2176
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2177
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 2178
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 2179
    return v3

    .line 2177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2183
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2184
    .local v2, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2185
    .local v4, "numFooters":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 2186
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 2187
    return v3

    .line 2185
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2191
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 3382
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 3383
    return v0

    .line 3386
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3387
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o lookForSelectablePositionOnScreen(I)I
    .locals 7
    .param p1, "direction"    # I

    .line 3245
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3246
    .local v0, "firstPosition":I
    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_5

    .line 3247
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_0

    .line 3248
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3249
    :cond_0
    move v2, v0

    :goto_0
    nop

    .line 3250
    .local v2, "startPos":I
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 3251
    return v1

    .line 3253
    :cond_1
    if-ge v2, v0, :cond_2

    .line 3254
    move v2, v0

    .line 3257
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3258
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3259
    .local v4, "adapter":Landroid/widget/ListAdapter;
    move v5, v2

    .local v5, "pos":I
    :goto_1
    if-gt v5, v3, :cond_4

    .line 3260
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v5, v0

    .line 3261
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 3262
    return v5

    .line 3259
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3265
    .end local v2    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_4
    goto :goto_4

    .line 3266
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 3267
    .local v2, "last":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v1, :cond_6

    .line 3268
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3269
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_2
    nop

    .line 3270
    .local v3, "startPos":I
    if-ltz v3, :cond_b

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_7

    goto :goto_5

    .line 3273
    :cond_7
    if-le v3, v2, :cond_8

    .line 3274
    move v3, v2

    .line 3277
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3278
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    move v5, v3

    .restart local v5    # "pos":I
    :goto_3
    if-lt v5, v0, :cond_a

    .line 3279
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_9

    sub-int v6, v5, v0

    .line 3280
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 3281
    return v5

    .line 3278
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3285
    .end local v2    # "last":I
    .end local v3    # "startPos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_a
    :goto_4
    return v1

    .line 3271
    .restart local v2    # "last":I
    .restart local v3    # "startPos":I
    :cond_b
    :goto_5
    return v1
.end method

.method private greylist makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .line 2211
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2213
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    .line 2214
    .local v0, "activeView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2217
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2218
    return-object v0

    .line 2224
    .end local v0    # "activeView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2228
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2229
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2232
    :cond_1
    return-object v0
.end method

.method private greylist-max-o measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 3056
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3057
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 3058
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3060
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3063
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3064
    .local v1, "heightDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 3065
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3064
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3068
    .end local v1    # "heightDelta":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o measureItem(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 3076
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3077
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3078
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 3083
    :cond_0
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3085
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3087
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 3088
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_0

    .line 3090
    .end local v3    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 3093
    .restart local v3    # "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 3094
    return-void
.end method

.method private greylist-max-o measureScrapChild(Landroid/view/View;III)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .line 1367
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1368
    .local v0, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1370
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1373
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1374
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1376
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1378
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1380
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1381
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_0

    .line 1383
    .end local v3    # "childHeightSpec":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1385
    .restart local v3    # "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1389
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1390
    return-void
.end method

.method private greylist-max-o moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 14
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .line 1084
    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1085
    .local v8, "fadingEdgeLength":I
    iget v9, v6, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1089
    .local v9, "selectedPosition":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v10

    .line 1091
    .local v10, "topSelectionPixel":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v11

    .line 1094
    .local v11, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1116
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    .line 1119
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    iget v13, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 1122
    .local v13, "dividerHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1126
    .local v0, "sel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v11, :cond_0

    .line 1129
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v10

    .line 1132
    .local v1, "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v11

    .line 1135
    .local v2, "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1136
    .local v3, "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1137
    .local v4, "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1140
    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1142
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1146
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_0
    iget-boolean v1, v6, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1147
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1148
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1149
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 1151
    :cond_1
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1152
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1153
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1155
    .end local v13    # "dividerHeight":I
    :goto_0
    goto/16 :goto_2

    .end local v0    # "sel":Landroid/view/View;
    .end local v12    # "oldSel":Landroid/view/View;
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1176
    if-eqz p2, :cond_3

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1183
    .end local v0    # "sel":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1188
    .restart local v0    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v10, :cond_4

    .line 1190
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v10, v1

    .line 1193
    .restart local v1    # "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v11, v2

    .line 1196
    .restart local v2    # "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1197
    .restart local v3    # "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1198
    .restart local v4    # "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1201
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1205
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_4
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_2

    .line 1208
    .end local v0    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1213
    .local v12, "oldTop":I
    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1216
    .restart local v0    # "sel":Landroid/view/View;
    if-ge v12, v7, :cond_6

    .line 1219
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1220
    .local v1, "newBottom":I
    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_6

    .line 1222
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1227
    .end local v1    # "newBottom":I
    :cond_6
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    .line 1230
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    :goto_2
    return-object v0
.end method

.method private final greylist-max-o nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 2871
    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v0, :cond_2

    .line 2872
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2873
    .local v3, "listBottom":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 2874
    if-eq p2, v2, :cond_0

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v4, :cond_0

    .line 2875
    add-int/lit8 v4, p2, 0x1

    goto :goto_0

    .line 2876
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_0
    nop

    .line 2880
    .end local v3    # "listBottom":I
    .local v4, "nextSelected":I
    goto :goto_2

    .line 2878
    .end local v4    # "nextSelected":I
    .restart local v3    # "listBottom":I
    :cond_1
    return v2

    .line 2881
    .end local v3    # "listBottom":I
    :cond_2
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2882
    .local v3, "listTop":I
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v3, :cond_7

    .line 2883
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 2884
    .local v4, "lastPos":I
    if-eq p2, v2, :cond_3

    if-gt p2, v4, :cond_3

    .line 2885
    add-int/lit8 v5, p2, -0x1

    goto :goto_1

    .line 2886
    :cond_3
    move v5, v4

    :goto_1
    move v4, v5

    .line 2887
    .local v4, "nextSelected":I
    nop

    .line 2892
    .end local v3    # "listTop":I
    :goto_2
    if-ltz v4, :cond_6

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v4, v3, :cond_4

    goto :goto_4

    .line 2895
    :cond_4
    if-ne p3, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 2893
    :cond_6
    :goto_4
    return v2

    .line 2888
    .end local v4    # "nextSelected":I
    .restart local v3    # "listTop":I
    :cond_7
    return v2
.end method

.method private greylist-max-o positionOfNewFocus(Landroid/view/View;)I
    .locals 4
    .param p1, "newFocus"    # Landroid/view/View;

    .line 3367
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3368
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3369
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3370
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3371
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3368
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3374
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o relayoutMeasuredItem(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 3102
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3103
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3104
    .local v1, "h":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 3105
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 3106
    .local v3, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3107
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 3108
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 3109
    return-void
.end method

.method private greylist-max-o removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 452
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 453
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 454
    .local v2, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 455
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    goto :goto_1

    .line 452
    .end local v2    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private greylist-max-o removeUnusedFixedViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 2154
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    if-nez p1, :cond_0

    .line 2155
    return-void

    .line 2157
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2158
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2159
    .local v1, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2160
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2161
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_1

    .line 2162
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2163
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2157
    .end local v1    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2167
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private greylist scrollListItemsBy(I)V
    .locals 11
    .param p1, "amount"    # I

    .line 3451
    iget v0, p0, Landroid/widget/ListView;->mScrollX:I

    .line 3452
    .local v0, "oldX":I
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    .line 3454
    .local v1, "oldY":I
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3456
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 3457
    .local v2, "listBottom":I
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3458
    .local v3, "listTop":I
    iget-object v4, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3460
    .local v4, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v5, 0x0

    if-gez p1, :cond_4

    .line 3464
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 3465
    .local v6, "numChildren":I
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3466
    .local v7, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 3467
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    .line 3468
    .local v8, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    .line 3469
    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3470
    nop

    .end local v8    # "lastVisiblePosition":I
    add-int/lit8 v6, v6, 0x1

    .line 3474
    goto :goto_0

    .line 3479
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_1

    .line 3480
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3484
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3485
    .local v8, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v3, :cond_3

    .line 3486
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    .line 3487
    .local v9, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3488
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v4, v8, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3490
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3491
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3492
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3493
    .end local v9    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1

    .line 3494
    .end local v6    # "numChildren":I
    .end local v7    # "last":Landroid/view/View;
    .end local v8    # "first":Landroid/view/View;
    :cond_3
    goto :goto_4

    .line 3496
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3499
    .local v5, "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_5

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v6, :cond_5

    .line 3500
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3501
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3506
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 3507
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3510
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 3511
    .local v6, "lastIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3514
    .restart local v7    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v2, :cond_8

    .line 3515
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 3516
    .local v8, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3517
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v6

    invoke-virtual {v4, v7, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3519
    :cond_7
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3520
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3521
    .end local v8    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_3

    .line 3523
    .end local v5    # "first":Landroid/view/View;
    .end local v6    # "lastIndex":I
    .end local v7    # "last":Landroid/view/View;
    :cond_8
    :goto_4
    invoke-virtual {v4}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3524
    iget-object v5, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3525
    iget-object v5, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3526
    iget v5, p0, Landroid/widget/ListView;->mScrollX:I

    iget v6, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 3527
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZ)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    .line 2253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-wide/16 v4, 0x8

    const-string/jumbo v6, "setupListItem"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2255
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    .line 2256
    .local v8, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    .line 2257
    .local v9, "updateChildSelected":Z
    :goto_1
    iget v10, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 2258
    .local v10, "mode":I
    if-lez v10, :cond_2

    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    iget v11, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v11, v2, :cond_2

    move v11, v6

    goto :goto_2

    :cond_2
    move v11, v7

    .line 2260
    .local v11, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3

    move v12, v6

    goto :goto_3

    :cond_3
    move v12, v7

    .line 2261
    .local v12, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_5

    if-nez v9, :cond_5

    .line 2262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    move v13, v7

    goto :goto_5

    :cond_5
    :goto_4
    move v13, v6

    .line 2266
    .local v13, "needToMeasure":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2267
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_6

    .line 2268
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 2270
    :cond_6
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2271
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2276
    if-eqz v9, :cond_7

    .line 2277
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2280
    :cond_7
    if-eqz v12, :cond_8

    .line 2281
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 2284
    :cond_8
    iget v15, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v15, :cond_a

    iget-object v15, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a

    .line 2285
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_9

    .line 2286
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v4, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v15, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    .line 2287
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a

    .line 2289
    iget-object v4, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 2293
    :cond_a
    :goto_6
    const/4 v4, -0x1

    if-eqz p7, :cond_b

    iget-boolean v5, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v5, :cond_c

    :cond_b
    iget-boolean v5, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v15, -0x2

    if-eqz v5, :cond_e

    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v5, v15, :cond_e

    .line 2295
    :cond_c
    if-eqz p4, :cond_d

    goto :goto_7

    :cond_d
    move v4, v7

    :goto_7
    invoke-virtual {v0, v1, v4, v14}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2299
    if-eqz p7, :cond_11

    .line 2300
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v4, v2, :cond_11

    .line 2302
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_9

    .line 2305
    :cond_e
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2306
    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v5, v15, :cond_f

    .line 2307
    iput-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2309
    :cond_f
    if-eqz p4, :cond_10

    goto :goto_8

    :cond_10
    move v4, v7

    :goto_8
    invoke-virtual {v0, v1, v4, v14, v6}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2311
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2314
    :cond_11
    :goto_9
    if-eqz v13, :cond_13

    .line 2315
    iget v4, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v15

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v4, v5, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 2317
    .local v4, "childWidthSpec":I
    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2319
    .local v5, "lpHeight":I
    if-lez v5, :cond_12

    .line 2320
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childHeightSpec":I
    goto :goto_a

    .line 2322
    .end local v7    # "childHeightSpec":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 2325
    .restart local v7    # "childHeightSpec":I
    :goto_a
    invoke-virtual {v1, v4, v7}, Landroid/view/View;->measure(II)V

    .line 2326
    .end local v4    # "childWidthSpec":I
    .end local v5    # "lpHeight":I
    .end local v7    # "childHeightSpec":I
    goto :goto_b

    .line 2327
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2330
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 2331
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 2332
    .local v5, "h":I
    if-eqz p4, :cond_14

    move/from16 v7, p3

    goto :goto_c

    :cond_14
    sub-int v7, p3, v5

    .line 2334
    .local v7, "childTop":I
    :goto_c
    if-eqz v13, :cond_15

    .line 2335
    add-int v15, v3, v4

    .line 2336
    .local v15, "childRight":I
    add-int v6, v7, v5

    .line 2337
    .local v6, "childBottom":I
    invoke-virtual {v1, v3, v7, v15, v6}, Landroid/view/View;->layout(IIII)V

    .line 2338
    .end local v6    # "childBottom":I
    .end local v15    # "childRight":I
    goto :goto_d

    .line 2339
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2340
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2343
    :goto_d
    iget-boolean v6, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v6

    if-nez v6, :cond_16

    .line 2344
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2347
    :cond_16
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 2348
    return-void
.end method

.method private greylist-max-o shouldAdjustHeightForDivider(I)Z
    .locals 21
    .param p1, "itemIndex"    # I

    .line 4276
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4277
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4278
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4279
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 4280
    .local v7, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 4281
    .local v8, "drawOverscrollFooter":Z
    :goto_1
    if-lez v2, :cond_2

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 4283
    .local v9, "drawDividers":Z
    :goto_2
    if-eqz v9, :cond_1c

    .line 4284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 4285
    .local v10, "fillForMissingDividers":Z
    :goto_3
    iget v11, v0, Landroid/widget/ListView;->mItemCount:I

    .line 4286
    .local v11, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 4287
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 4288
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 4289
    .local v14, "isHeader":Z
    :goto_4
    if-lt v1, v13, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 4290
    .local v15, "isFooter":Z
    :goto_5
    iget-boolean v5, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4291
    .local v5, "headerDividers":Z
    iget-boolean v6, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4292
    .local v6, "footerDividers":Z
    if-nez v5, :cond_7

    if-nez v14, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_10

    :cond_7
    :goto_6
    if-nez v6, :cond_8

    if-nez v15, :cond_6

    .line 4293
    :cond_8
    move/from16 v17, v2

    .end local v2    # "dividerHeight":I
    .local v17, "dividerHeight":I
    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4294
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v18, v3

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v18, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_12

    .line 4295
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    .line 4296
    .local v3, "isLastItem":Z
    :goto_7
    if-eqz v8, :cond_a

    if-nez v3, :cond_11

    .line 4297
    :cond_a
    add-int/lit8 v0, v1, 0x1

    .line 4301
    .local v0, "nextIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_10

    if-nez v5, :cond_c

    if-nez v14, :cond_b

    if-lt v0, v12, :cond_b

    goto :goto_8

    :cond_b
    const/16 v16, 0x1

    goto :goto_a

    :cond_c
    :goto_8
    if-nez v3, :cond_f

    .line 4303
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_e

    if-nez v6, :cond_d

    if-nez v15, :cond_e

    if-ge v0, v13, :cond_e

    :cond_d
    goto :goto_9

    :cond_e
    const/16 v16, 0x1

    goto :goto_a

    .line 4305
    :cond_f
    :goto_9
    const/16 v16, 0x1

    return v16

    .line 4301
    :cond_10
    const/16 v16, 0x1

    .line 4306
    :goto_a
    if-eqz v10, :cond_11

    .line 4307
    return v16

    .line 4310
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_11
    goto :goto_10

    .line 4311
    :cond_12
    if-eqz v7, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    .line 4312
    .local v0, "start":I
    :goto_b
    if-ne v1, v0, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 4313
    .local v3, "isFirstItem":Z
    :goto_c
    if-nez v3, :cond_1b

    .line 4314
    move/from16 v19, v0

    .end local v0    # "start":I
    .local v19, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 4318
    .local v0, "previousIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    if-nez v5, :cond_16

    if-nez v14, :cond_15

    if-lt v0, v12, :cond_15

    goto :goto_d

    :cond_15
    const/16 v16, 0x1

    goto :goto_f

    :cond_16
    :goto_d
    if-nez v3, :cond_19

    .line 4320
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_18

    if-nez v6, :cond_17

    if-nez v15, :cond_18

    if-ge v0, v13, :cond_18

    :cond_17
    goto :goto_e

    :cond_18
    const/16 v16, 0x1

    goto :goto_f

    .line 4322
    :cond_19
    :goto_e
    const/16 v16, 0x1

    return v16

    .line 4318
    :cond_1a
    const/16 v16, 0x1

    .line 4323
    :goto_f
    if-eqz v10, :cond_1d

    .line 4324
    return v16

    .line 4313
    .end local v19    # "start":I
    .local v0, "start":I
    :cond_1b
    move/from16 v19, v0

    .end local v0    # "start":I
    .restart local v19    # "start":I
    goto :goto_10

    .line 4283
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    .end local v17    # "dividerHeight":I
    .end local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v19    # "start":I
    .local v2, "dividerHeight":I
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_1c
    move/from16 v17, v2

    move-object/from16 v18, v3

    .line 4331
    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "dividerHeight":I
    .restart local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_1d
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o showingBottomFadingEdge()Z
    .locals 6

    .line 686
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 687
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 688
    .local v1, "bottomOfBottomChild":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 690
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 692
    .local v4, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_1

    if-ge v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method private greylist-max-o showingTopFadingEdge()Z
    .locals 3

    .line 678
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 679
    .local v0, "listTop":I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public whitelist addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 521
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 522
    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 479
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 486
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 487
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 488
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 489
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 493
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 500
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 504
    :cond_2
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 420
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 421
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 379
    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 385
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 386
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 387
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 388
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 392
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    .line 394
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 399
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 403
    :cond_2
    return-void
.end method

.method public whitelist areFooterDividersEnabled()Z
    .locals 1

    .line 3961
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public whitelist areHeaderDividersEnabled()Z
    .locals 1

    .line 3937
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method greylist arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .line 2846
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2847
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2848
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2849
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2851
    :cond_0
    nop

    .line 2853
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2851
    return v0

    .line 2853
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2854
    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1

    .line 2352
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected greylist-max-o dispatchDataSetObserverOnChangedInternal()V
    .locals 1

    .line 4414
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 4415
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 4417
    :cond_0
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3638
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3639
    iput-boolean v2, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3643
    :cond_0
    iget v8, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3644
    .local v8, "dividerHeight":I
    iget-object v9, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3645
    .local v9, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v10, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3646
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v11, v3

    .line 3647
    .local v11, "drawOverscrollHeader":Z
    if-eqz v10, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v12, v3

    .line 3648
    .local v12, "drawOverscrollFooter":Z
    if-lez v8, :cond_3

    iget-object v3, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    move v13, v3

    .line 3650
    .local v13, "drawDividers":Z
    if-nez v13, :cond_5

    if-nez v11, :cond_5

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v27, v9

    move/from16 v26, v11

    move/from16 v29, v12

    move/from16 v33, v13

    goto/16 :goto_1e

    .line 3652
    :cond_5
    :goto_3
    iget-object v4, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3653
    .local v4, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3654
    iget v5, v0, Landroid/widget/ListView;->mRight:I

    iget v6, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3656
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 3657
    .local v5, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    .line 3658
    .local v6, "headerCount":I
    iget v14, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3659
    .local v14, "itemCount":I
    iget-object v15, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int v15, v14, v15

    .line 3660
    .local v15, "footerLimit":I
    iget-boolean v2, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3661
    .local v2, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3662
    .local v3, "footerDividers":Z
    iget v1, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3663
    .local v1, "first":I
    move-object/from16 v17, v10

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v17, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    iget-boolean v10, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3664
    .local v10, "areAllItemsSelectable":Z
    move/from16 v18, v10

    .end local v10    # "areAllItemsSelectable":Z
    .local v18, "areAllItemsSelectable":Z
    iget-object v10, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3669
    .local v10, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    .line 3671
    .local v19, "fillForMissingDividers":Z
    :goto_4
    if-eqz v19, :cond_8

    move/from16 v20, v14

    .end local v14    # "itemCount":I
    .local v20, "itemCount":I
    iget-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_7

    iget-boolean v14, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v14, :cond_7

    .line 3672
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3673
    move-object/from16 v21, v10

    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .local v21, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 3671
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "adapter":Landroid/widget/ListAdapter;
    :cond_7
    move-object/from16 v21, v10

    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_5

    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "adapter":Landroid/widget/ListAdapter;
    .restart local v14    # "itemCount":I
    :cond_8
    move-object/from16 v21, v10

    move/from16 v20, v14

    .line 3675
    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .end local v14    # "itemCount":I
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    :goto_5
    iget-object v10, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3677
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x0

    .line 3678
    .local v14, "effectivePaddingTop":I
    const/16 v22, 0x0

    .line 3679
    .local v22, "effectivePaddingBottom":I
    move/from16 v23, v14

    .end local v14    # "effectivePaddingTop":I
    .local v23, "effectivePaddingTop":I
    iget v14, v0, Landroid/widget/ListView;->mGroupFlags:I

    move-object/from16 v24, v10

    .end local v10    # "paint":Landroid/graphics/Paint;
    .local v24, "paint":Landroid/graphics/Paint;
    const/16 v10, 0x22

    and-int/2addr v14, v10

    if-ne v14, v10, :cond_9

    .line 3680
    iget-object v10, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v10, Landroid/graphics/Rect;->top:I

    .line 3681
    .end local v23    # "effectivePaddingTop":I
    .restart local v14    # "effectivePaddingTop":I
    iget-object v10, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v10

    .end local v22    # "effectivePaddingBottom":I
    .local v10, "effectivePaddingBottom":I
    goto :goto_6

    .line 3679
    .end local v10    # "effectivePaddingBottom":I
    .end local v14    # "effectivePaddingTop":I
    .restart local v22    # "effectivePaddingBottom":I
    .restart local v23    # "effectivePaddingTop":I
    :cond_9
    move/from16 v14, v23

    .line 3684
    .end local v23    # "effectivePaddingTop":I
    .restart local v14    # "effectivePaddingTop":I
    :goto_6
    iget v10, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v23, v14

    .end local v14    # "effectivePaddingTop":I
    .restart local v23    # "effectivePaddingTop":I
    iget v14, v0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v10, v14

    sub-int v10, v10, v22

    iget v14, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v10, v14

    .line 3685
    .local v10, "listBottom":I
    iget-boolean v14, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v14, :cond_20

    .line 3686
    const/4 v14, 0x0

    .line 3689
    .local v14, "bottom":I
    move/from16 v25, v14

    .end local v14    # "bottom":I
    .local v25, "bottom":I
    iget v14, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3690
    .local v14, "scrollY":I
    if-lez v5, :cond_b

    if-gez v14, :cond_b

    .line 3691
    if-eqz v11, :cond_a

    .line 3692
    move/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "drawOverscrollHeader":Z
    .local v26, "drawOverscrollHeader":Z
    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 3693
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3694
    invoke-virtual {v0, v7, v9, v4}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 3695
    .end local v26    # "drawOverscrollHeader":Z
    .restart local v11    # "drawOverscrollHeader":Z
    :cond_a
    move/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "drawOverscrollHeader":Z
    .restart local v26    # "drawOverscrollHeader":Z
    if-eqz v13, :cond_c

    .line 3696
    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 3697
    neg-int v11, v8

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 3698
    const/4 v11, -0x1

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_7

    .line 3690
    .end local v26    # "drawOverscrollHeader":Z
    .restart local v11    # "drawOverscrollHeader":Z
    :cond_b
    move/from16 v26, v11

    .line 3702
    .end local v11    # "drawOverscrollHeader":Z
    .restart local v26    # "drawOverscrollHeader":Z
    :cond_c
    :goto_7
    const/4 v11, 0x0

    move/from16 v35, v25

    move/from16 v25, v14

    move/from16 v14, v35

    .local v11, "i":I
    .local v14, "bottom":I
    .local v25, "scrollY":I
    :goto_8
    if-ge v11, v5, :cond_1d

    .line 3703
    move-object/from16 v27, v9

    .end local v9    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v27, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v9, v1, v11

    .line 3704
    .local v9, "itemIndex":I
    if-ge v9, v6, :cond_d

    const/16 v28, 0x1

    goto :goto_9

    :cond_d
    const/16 v28, 0x0

    .line 3705
    .local v28, "isHeader":Z
    :goto_9
    if-lt v9, v15, :cond_e

    const/16 v29, 0x1

    goto :goto_a

    :cond_e
    const/16 v29, 0x0

    .line 3706
    .local v29, "isFooter":Z
    :goto_a
    if-nez v2, :cond_f

    if-nez v28, :cond_10

    :cond_f
    if-nez v3, :cond_11

    if-nez v29, :cond_10

    goto :goto_b

    .line 3702
    .end local v9    # "itemIndex":I
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    :cond_10
    move/from16 v31, v1

    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    goto/16 :goto_11

    .line 3707
    .restart local v9    # "itemIndex":I
    .restart local v28    # "isHeader":Z
    .restart local v29    # "isFooter":Z
    :cond_11
    :goto_b
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 3708
    .local v30, "child":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 3709
    move/from16 v31, v1

    .end local v1    # "first":I
    .local v31, "first":I
    add-int/lit8 v1, v5, -0x1

    if-ne v11, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    .line 3711
    .local v1, "isLastItem":Z
    :goto_c
    if-eqz v13, :cond_1c

    if-ge v14, v10, :cond_1c

    if-eqz v12, :cond_14

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    goto :goto_11

    .line 3713
    :cond_14
    :goto_d
    move/from16 v32, v10

    .end local v10    # "listBottom":I
    .local v32, "listBottom":I
    add-int/lit8 v10, v9, 0x1

    .line 3717
    .local v10, "nextIndex":I
    move/from16 v33, v13

    move-object/from16 v13, v21

    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .local v33, "drawDividers":Z
    invoke-interface {v13, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_1a

    if-nez v2, :cond_16

    if-nez v28, :cond_15

    if-lt v10, v6, :cond_15

    goto :goto_e

    :cond_15
    move/from16 v21, v1

    goto :goto_10

    :cond_16
    :goto_e
    if-nez v1, :cond_19

    .line 3719
    invoke-interface {v13, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_18

    if-nez v3, :cond_17

    if-nez v29, :cond_18

    if-ge v10, v15, :cond_18

    :cond_17
    goto :goto_f

    :cond_18
    move/from16 v21, v1

    goto :goto_10

    .line 3721
    :cond_19
    :goto_f
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3722
    move/from16 v21, v1

    .end local v1    # "isLastItem":Z
    .local v21, "isLastItem":Z
    add-int v1, v14, v8

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 3723
    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v1, v24

    goto :goto_11

    .line 3717
    .end local v21    # "isLastItem":Z
    .restart local v1    # "isLastItem":Z
    :cond_1a
    move/from16 v21, v1

    .line 3724
    .end local v1    # "isLastItem":Z
    .restart local v21    # "isLastItem":Z
    :goto_10
    if-eqz v19, :cond_1b

    .line 3725
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3726
    add-int v1, v14, v8

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 3727
    move-object/from16 v1, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11

    .line 3724
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1b
    move-object/from16 v1, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_11

    .line 3711
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v1, "isLastItem":Z
    .local v10, "listBottom":I
    .local v13, "drawDividers":Z
    .local v21, "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1c
    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, v24

    .line 3702
    .end local v9    # "itemIndex":I
    .end local v10    # "listBottom":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    .end local v30    # "child":Landroid/view/View;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    :goto_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v24, v1

    move-object/from16 v21, v13

    move-object/from16 v9, v27

    move/from16 v1, v31

    move/from16 v10, v32

    move/from16 v13, v33

    goto/16 :goto_8

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "first":I
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v1, "first":I
    .local v9, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "listBottom":I
    .local v13, "drawDividers":Z
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1d
    move/from16 v31, v1

    move-object/from16 v27, v9

    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    .line 3733
    .end local v9    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v10    # "listBottom":I
    .end local v11    # "i":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "first":I
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    iget v9, v0, Landroid/widget/ListView;->mBottom:I

    iget v10, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v9, v10

    .line 3734
    .local v9, "overFooterBottom":I
    if-eqz v12, :cond_1f

    add-int v10, v31, v5

    move/from16 v11, v20

    .end local v20    # "itemCount":I
    .local v11, "itemCount":I
    if-ne v10, v11, :cond_1e

    if-le v9, v14, :cond_1e

    .line 3736
    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 3737
    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 3738
    move-object/from16 v10, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7, v10, v4}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_12

    .line 3734
    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_1e
    move-object/from16 v10, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v11    # "itemCount":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    :cond_1f
    move-object/from16 v10, v17

    move/from16 v11, v20

    .line 3740
    .end local v9    # "overFooterBottom":I
    .end local v14    # "bottom":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v25    # "scrollY":I
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "itemCount":I
    :goto_12
    move/from16 v29, v12

    goto/16 :goto_1e

    .line 3743
    .end local v26    # "drawOverscrollHeader":Z
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "first":I
    .end local v32    # "listBottom":I
    .end local v33    # "drawDividers":Z
    .local v1, "first":I
    .local v9, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v10, "listBottom":I
    .local v11, "drawOverscrollHeader":Z
    .local v13, "drawDividers":Z
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_20
    move/from16 v31, v1

    move-object/from16 v27, v9

    move/from16 v32, v10

    move/from16 v26, v11

    move/from16 v33, v13

    move-object/from16 v10, v17

    move/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    .end local v9    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v11, "itemCount":I
    .local v13, "adapter":Landroid/widget/ListAdapter;
    .restart local v26    # "drawOverscrollHeader":Z
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "first":I
    .restart local v32    # "listBottom":I
    .restart local v33    # "drawDividers":Z
    iget v9, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3745
    .local v9, "scrollY":I
    if-lez v5, :cond_21

    if-eqz v26, :cond_21

    .line 3746
    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 3747
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 3748
    move-object/from16 v14, v27

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v14, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7, v14, v4}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_13

    .line 3745
    .end local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_21
    move-object/from16 v14, v27

    .line 3751
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_13
    if-eqz v26, :cond_22

    const/16 v16, 0x1

    goto :goto_14

    :cond_22
    const/16 v16, 0x0

    :goto_14
    move/from16 v20, v16

    .line 3752
    .local v20, "start":I
    move/from16 v21, v11

    move/from16 v11, v16

    .local v11, "i":I
    .local v21, "itemCount":I
    :goto_15
    if-ge v11, v5, :cond_32

    .line 3753
    move-object/from16 v27, v14

    .end local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v14, v31, v11

    .line 3754
    .local v14, "itemIndex":I
    if-ge v14, v6, :cond_23

    const/16 v16, 0x1

    goto :goto_16

    :cond_23
    const/16 v16, 0x0

    .line 3755
    .local v16, "isHeader":Z
    :goto_16
    if-lt v14, v15, :cond_24

    const/16 v24, 0x1

    goto :goto_17

    :cond_24
    const/16 v24, 0x0

    .line 3756
    .local v24, "isFooter":Z
    :goto_17
    if-nez v2, :cond_26

    if-nez v16, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v29, v12

    move/from16 v30, v20

    goto/16 :goto_1d

    :cond_26
    :goto_18
    if-nez v3, :cond_27

    if-nez v24, :cond_25

    .line 3757
    :cond_27
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3758
    .local v25, "child":Landroid/view/View;
    move-object/from16 v28, v10

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v28, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3759
    .local v10, "top":I
    if-eqz v33, :cond_30

    move/from16 v29, v12

    move/from16 v12, v23

    .end local v23    # "effectivePaddingTop":I
    .local v12, "effectivePaddingTop":I
    .local v29, "drawOverscrollFooter":Z
    if-le v10, v12, :cond_2f

    .line 3760
    move/from16 v23, v12

    move/from16 v12, v20

    .end local v20    # "start":I
    .local v12, "start":I
    .restart local v23    # "effectivePaddingTop":I
    if-ne v11, v12, :cond_28

    const/16 v20, 0x1

    goto :goto_19

    :cond_28
    const/16 v20, 0x0

    .line 3761
    .local v20, "isFirstItem":Z
    :goto_19
    move/from16 v30, v12

    .end local v12    # "start":I
    .local v30, "start":I
    add-int/lit8 v12, v14, -0x1

    .line 3765
    .local v12, "previousIndex":I
    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_2e

    if-nez v2, :cond_2a

    if-nez v16, :cond_29

    if-lt v12, v6, :cond_29

    goto :goto_1a

    :cond_29
    move/from16 v34, v2

    goto :goto_1c

    :cond_2a
    :goto_1a
    if-nez v20, :cond_2d

    .line 3767
    invoke-interface {v13, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_2c

    if-nez v3, :cond_2b

    if-nez v24, :cond_2c

    if-ge v12, v15, :cond_2c

    :cond_2b
    goto :goto_1b

    :cond_2c
    move/from16 v34, v2

    goto :goto_1c

    .line 3769
    :cond_2d
    :goto_1b
    move/from16 v34, v2

    .end local v2    # "headerDividers":Z
    .local v34, "headerDividers":Z
    sub-int v2, v10, v8

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3770
    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 3775
    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v0, v7, v4, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1d

    .line 3765
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    :cond_2e
    move/from16 v34, v2

    .line 3776
    .end local v2    # "headerDividers":Z
    .restart local v34    # "headerDividers":Z
    :goto_1c
    if-eqz v19, :cond_31

    .line 3777
    sub-int v2, v10, v8

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3778
    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 3779
    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1d

    .line 3759
    .end local v23    # "effectivePaddingTop":I
    .end local v30    # "start":I
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    .local v12, "effectivePaddingTop":I
    .local v20, "start":I
    :cond_2f
    move/from16 v34, v2

    move/from16 v23, v12

    move/from16 v30, v20

    .end local v2    # "headerDividers":Z
    .end local v12    # "effectivePaddingTop":I
    .end local v20    # "start":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v30    # "start":I
    .restart local v34    # "headerDividers":Z
    goto :goto_1d

    .end local v29    # "drawOverscrollFooter":Z
    .end local v30    # "start":I
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    .local v12, "drawOverscrollFooter":Z
    .restart local v20    # "start":I
    :cond_30
    move/from16 v34, v2

    move/from16 v29, v12

    move/from16 v30, v20

    .line 3752
    .end local v2    # "headerDividers":Z
    .end local v10    # "top":I
    .end local v12    # "drawOverscrollFooter":Z
    .end local v14    # "itemIndex":I
    .end local v16    # "isHeader":Z
    .end local v20    # "start":I
    .end local v24    # "isFooter":Z
    .end local v25    # "child":Landroid/view/View;
    .restart local v29    # "drawOverscrollFooter":Z
    .restart local v30    # "start":I
    .restart local v34    # "headerDividers":Z
    :cond_31
    :goto_1d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v27

    move-object/from16 v10, v28

    move/from16 v12, v29

    move/from16 v20, v30

    move/from16 v2, v34

    goto/16 :goto_15

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v29    # "drawOverscrollFooter":Z
    .end local v30    # "start":I
    .end local v34    # "headerDividers":Z
    .restart local v2    # "headerDividers":Z
    .local v10, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "drawOverscrollFooter":Z
    .local v14, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "start":I
    :cond_32
    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v29, v12

    move-object/from16 v27, v14

    move/from16 v30, v20

    .line 3785
    .end local v2    # "headerDividers":Z
    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v11    # "i":I
    .end local v12    # "drawOverscrollFooter":Z
    .end local v14    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v20    # "start":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v29    # "drawOverscrollFooter":Z
    .restart local v30    # "start":I
    .restart local v34    # "headerDividers":Z
    if-lez v5, :cond_35

    if-lez v9, :cond_35

    .line 3786
    if-eqz v29, :cond_33

    .line 3787
    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    .line 3788
    .local v2, "absListBottom":I
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3789
    add-int v10, v2, v9

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 3790
    move-object/from16 v10, v28

    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7, v10, v4}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3791
    .end local v2    # "absListBottom":I
    goto :goto_1e

    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_33
    move-object/from16 v10, v28

    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_34

    .line 3792
    move/from16 v2, v32

    .end local v32    # "listBottom":I
    .local v2, "listBottom":I
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 3793
    add-int v11, v2, v8

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 3794
    const/4 v11, -0x1

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1e

    .line 3791
    .end local v2    # "listBottom":I
    .restart local v32    # "listBottom":I
    :cond_34
    move/from16 v2, v32

    .end local v32    # "listBottom":I
    .restart local v2    # "listBottom":I
    goto :goto_1e

    .line 3785
    .end local v2    # "listBottom":I
    .end local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "listBottom":I
    :cond_35
    move-object/from16 v10, v28

    move/from16 v2, v32

    .line 3800
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v3    # "footerDividers":Z
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "count":I
    .end local v6    # "headerCount":I
    .end local v9    # "scrollY":I
    .end local v13    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "footerLimit":I
    .end local v18    # "areAllItemsSelectable":Z
    .end local v19    # "fillForMissingDividers":Z
    .end local v21    # "itemCount":I
    .end local v22    # "effectivePaddingBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v28    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v30    # "start":I
    .end local v31    # "first":I
    .end local v32    # "listBottom":I
    .end local v34    # "headerDividers":Z
    .restart local v10    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :goto_1e
    iget-object v1, v0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    if-eqz v1, :cond_36

    .line 3801
    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 3805
    :cond_36
    iget-boolean v1, v0, Landroid/widget/ListView;->mSemEnableFillOut:Z

    if-eqz v1, :cond_37

    iget v1, v0, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 3806
    const/4 v2, 0x0

    iget v1, v0, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    int-to-float v3, v1

    iget v1, v0, Landroid/widget/ListView;->mRight:I

    int-to-float v4, v1

    iget v1, v0, Landroid/widget/ListView;->mBottom:I

    int-to-float v5, v1

    iget-object v6, v0, Landroid/widget/ListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3811
    :cond_37
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3814
    iget-object v1, v0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_38

    .line 3815
    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3818
    :cond_38
    iget-object v1, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v1, :cond_39

    .line 3819
    iget-object v1, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemSweepListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 3822
    :cond_39
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2508
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2509
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 2511
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2512
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2515
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2518
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 3827
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3828
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3832
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3833
    .local v0, "more":Z
    iget-boolean v2, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_1

    .line 3834
    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3838
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_2

    .line 3839
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 3843
    :cond_2
    return v0
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 3857
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3859
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3860
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3861
    return-void
.end method

.method greylist-max-o drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3620
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3622
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3623
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3625
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3626
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3627
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3630
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3631
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3633
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3634
    return-void
.end method

.method greylist-max-o drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3603
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3605
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3606
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3608
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3609
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3610
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3613
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3614
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3616
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3617
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 4394
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4396
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    const-string/jumbo v1, "recycleOnMeasure"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4397
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .locals 4
    .param p1, "down"    # Z

    .line 781
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 782
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_2

    .line 783
    const/4 v2, 0x0

    .line 784
    .local v2, "paddingTop":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    .line 785
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 787
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 788
    :cond_1
    move v1, v2

    :goto_0
    nop

    .line 789
    .local v1, "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 790
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 791
    .end local v1    # "startOffset":I
    .end local v2    # "paddingTop":I
    goto :goto_2

    .line 792
    :cond_2
    const/4 v2, 0x0

    .line 793
    .local v2, "paddingBottom":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    .line 794
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 796
    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_1

    .line 797
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    nop

    .line 798
    .restart local v1    # "startOffset":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 799
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 801
    .end local v1    # "startOffset":I
    .end local v2    # "paddingBottom":I
    :goto_2
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .line 1492
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1493
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 1494
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1496
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1497
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1498
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1495
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 1502
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1503
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1504
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 1505
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1502
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1510
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4201
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 4202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4205
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4206
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4208
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4209
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4211
    if-eqz v2, :cond_0

    .line 4212
    return-object v2

    .line 4205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4217
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4180
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4181
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4182
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4183
    if-eqz v0, :cond_0

    .line 4184
    return-object v0

    .line 4187
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4188
    if-eqz v0, :cond_1

    .line 4189
    return-object v0

    .line 4192
    :cond_1
    return-object v0
.end method

.method greylist-max-o findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4106
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4107
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4110
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4113
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4114
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4116
    if-eqz v2, :cond_0

    .line 4117
    return-object v2

    .line 4110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4122
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4090
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4091
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4092
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4093
    if-eqz v0, :cond_0

    .line 4094
    return-object v0

    .line 4096
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4097
    if-eqz v0, :cond_1

    .line 4098
    return-object v0

    .line 4101
    :cond_1
    return-object v0
.end method

.method greylist-max-o findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4151
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4152
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4155
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4158
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4159
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4161
    if-eqz v2, :cond_0

    .line 4162
    return-object v2

    .line 4155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4167
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4133
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4134
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4135
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4136
    if-eqz v0, :cond_0

    .line 4137
    return-object v0

    .line 4140
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4141
    if-eqz v0, :cond_1

    .line 4142
    return-object v0

    .line 4145
    :cond_1
    return-object v0
.end method

.method greylist-max-o fullScroll(I)Z
    .locals 4
    .param p1, "direction"    # I

    .line 2749
    const/4 v0, 0x0

    .line 2750
    .local v0, "moved":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-ne p1, v3, :cond_1

    .line 2751
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_3

    .line 2752
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2753
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 2754
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2755
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2756
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2758
    :cond_0
    const/4 v0, 0x1

    .line 2759
    .end local v1    # "position":I
    goto :goto_0

    .line 2760
    :cond_1
    const/16 v3, 0x82

    if-ne p1, v3, :cond_3

    .line 2761
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v2

    .line 2762
    .local v3, "lastItem":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v2, v3, :cond_3

    .line 2763
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v2, v3, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2765
    .restart local v1    # "position":I
    if-ltz v1, :cond_2

    .line 2766
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2767
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2768
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2770
    :cond_2
    const/4 v0, 0x1

    .line 2774
    .end local v1    # "position":I
    .end local v3    # "lastItem":I
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2775
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2777
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2779
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2782
    :cond_4
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 4336
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 562
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4232
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4233
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 4238
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    .line 4239
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4240
    .local v0, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 4241
    .local v2, "count":I
    new-array v3, v2, [J

    .line 4242
    .local v3, "ids":[J
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4244
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .line 4245
    .local v5, "checkedCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 4246
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4247
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "checkedCount":I
    .local v7, "checkedCount":I
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    .line 4245
    .end local v7    # "checkedCount":I
    .restart local v5    # "checkedCount":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4253
    .end local v6    # "i":I
    :cond_2
    if-ne v5, v2, :cond_3

    .line 4254
    return-object v3

    .line 4256
    :cond_3
    new-array v6, v5, [J

    .line 4257
    .local v6, "result":[J
    invoke-static {v3, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4259
    return-object v6

    .line 4262
    .end local v0    # "states":Landroid/util/SparseBooleanArray;
    .end local v2    # "count":I
    .end local v3    # "ids":[J
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "checkedCount":I
    .end local v6    # "result":[J
    :cond_4
    new-array v0, v1, [J

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1726
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 1728
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public whitelist getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3872
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerHeight()I
    .locals 1

    .line 3901
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public whitelist getFooterViewsCount()I
    .locals 1

    .line 526
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeaderViewsCount()I
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-r getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 4268
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4269
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4270
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4272
    :cond_0
    return v0
.end method

.method public whitelist getItemsCanFocus()Z
    .locals 1

    .line 3565
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .locals 2

    .line 311
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 4000
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3981
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist isOpaque()Z
    .locals 7

    .line 3570
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    .line 3571
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3572
    .local v0, "retValue":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 3574
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3575
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3576
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_4

    goto :goto_3

    .line 3579
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    .line 3580
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    iget v6, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_2
    sub-int/2addr v5, v6

    .line 3581
    .local v5, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3582
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v5, :cond_8

    .line 3583
    :cond_6
    return v2

    .line 3577
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    :goto_3
    return v2

    .line 3586
    .end local v3    # "listTop":I
    .end local v4    # "first":Landroid/view/View;
    :cond_8
    return v0
.end method

.method protected whitelist layoutChildren()V
    .locals 31

    .line 1734
    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1735
    .local v8, "blockLayoutRequests":Z
    if-eqz v8, :cond_0

    .line 1736
    return-void

    .line 1739
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1742
    const/4 v9, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1744
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1746
    iget-object v1, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_3

    .line 1747
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1748
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_1

    .line 2130
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2132
    :cond_1
    if-nez v8, :cond_2

    .line 2133
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1749
    :cond_2
    return-void

    .line 1752
    :cond_3
    :try_start_1
    iget-object v1, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v10, v1

    .line 1753
    .local v10, "childrenTop":I
    iget v1, v7, Landroid/widget/ListView;->mBottom:I

    iget v2, v7, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v2

    .line 1754
    .local v11, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 1756
    .local v12, "childCount":I
    const/4 v1, 0x0

    .line 1757
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1760
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1761
    .local v3, "oldSel":Landroid/view/View;
    const/4 v4, 0x0

    .line 1762
    .local v4, "oldFirst":Landroid/view/View;
    const/4 v5, 0x0

    .line 1765
    .local v5, "newSel":Landroid/view/View;
    iget v6, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_0

    .line 1780
    iget v6, v7, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_0

    .line 1767
    :pswitch_0
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1768
    if-ltz v1, :cond_4

    if-ge v1, v12, :cond_4

    .line 1769
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 1797
    :cond_4
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 1776
    :pswitch_1
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 1780
    :goto_0
    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1781
    if-ltz v1, :cond_5

    if-ge v1, v12, :cond_5

    .line 1782
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1786
    :cond_5
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 1788
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_6

    .line 1789
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int v2, v6, v13

    .line 1793
    :cond_6
    add-int v6, v1, v2

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1797
    .end local v1    # "index":I
    .end local v2    # "delta":I
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "oldFirst":Landroid/view/View;
    .end local v5    # "newSel":Landroid/view/View;
    .local v13, "index":I
    .local v14, "delta":I
    .local v15, "oldSel":Landroid/view/View;
    .local v16, "oldFirst":Landroid/view/View;
    .local v17, "newSel":Landroid/view/View;
    :goto_1
    iget-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v18, v1

    .line 1798
    .local v18, "dataChanged":Z
    if-eqz v18, :cond_7

    .line 1799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1804
    :cond_7
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_a

    .line 1805
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1806
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2129
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_8

    .line 2130
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2132
    :cond_8
    if-nez v8, :cond_9

    .line 2133
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1807
    :cond_9
    return-void

    .line 1808
    :cond_a
    :try_start_2
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3e

    .line 1817
    iget v1, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1819
    const/4 v1, 0x0

    .line 1820
    .local v1, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    .line 1821
    .local v2, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v3, -0x1

    .line 1823
    .local v3, "accessibilityFocusPosition":I
    const/4 v4, 0x0

    .line 1829
    .local v4, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    move-object/from16 v19, v5

    .line 1830
    .local v19, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_f

    .line 1831
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    .line 1832
    .local v5, "focusHost":Landroid/view/View;
    if-eqz v5, :cond_f

    .line 1833
    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 1835
    .local v6, "focusChild":Landroid/view/View;
    if-eq v5, v6, :cond_b

    .line 1836
    const/4 v4, 0x1

    .line 1839
    :cond_b
    if-eqz v6, :cond_e

    .line 1840
    if-eqz v18, :cond_c

    invoke-direct {v7, v6}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 1842
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_c

    iget-boolean v0, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_d

    .line 1845
    :cond_c
    move-object v2, v5

    .line 1846
    nop

    .line 1847
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v1, v0

    .line 1852
    :cond_d
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    move v3, v0

    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    .line 1839
    :cond_e
    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    .line 1857
    .end local v5    # "focusHost":Landroid/view/View;
    .end local v6    # "focusChild":Landroid/view/View;
    :cond_f
    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    .end local v1    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "accessibilityFocusPosition":I
    .end local v4    # "mInsideViewAccFocused":Z
    .local v0, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v6, "accessibilityFocusPosition":I
    .local v21, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v22, "mInsideViewAccFocused":Z
    :goto_2
    const/4 v1, 0x0

    .line 1858
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 1861
    .local v2, "focusLayoutRestoreView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1867
    .local v3, "focusFirstItemTemporarily":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    .line 1868
    .local v5, "focusedChild":Landroid/view/View;
    if-eqz v5, :cond_13

    .line 1874
    if-eqz v18, :cond_10

    invoke-direct {v7, v5}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1875
    invoke-virtual {v5}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_10

    iget-boolean v4, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_11

    .line 1876
    :cond_10
    move-object v1, v5

    .line 1878
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 1879
    if-eqz v2, :cond_11

    .line 1881
    invoke-virtual {v2}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1883
    iget v4, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v4, :cond_11

    .line 1884
    const/4 v3, 0x1

    .line 1890
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1895
    :cond_12
    move-object v4, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    goto :goto_3

    .line 1868
    :cond_13
    move-object v4, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 1895
    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v2    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "focusFirstItemTemporarily":Z
    .local v4, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v23, "focusLayoutRestoreView":Landroid/view/View;
    .local v24, "focusFirstItemTemporarily":Z
    :goto_3
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    move v3, v1

    .line 1896
    .local v3, "firstPosition":I
    iget-object v1, v7, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object v2, v1

    .line 1897
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v18, :cond_15

    .line 1898
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v12, :cond_14

    .line 1899
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v25, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    add-int v4, v3, v1

    invoke-virtual {v2, v9, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1898
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v25

    const/4 v9, 0x0

    goto :goto_4

    .end local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_14
    move-object/from16 v25, v4

    .end local v1    # "i":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    goto :goto_5

    .line 1902
    .end local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_15
    move-object/from16 v25, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual {v2, v12, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1906
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1907
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1909
    iget v1, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v1, :pswitch_data_1

    .line 1956
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .local v26, "firstPosition":I
    .local v27, "index":I
    .local v28, "delta":I
    if-nez v12, :cond_1a

    .line 1957
    iget-boolean v1, v7, Landroid/widget/ListView;->mStackFromBottom:Z

    goto/16 :goto_6

    .line 1953
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_2
    move-object/from16 v1, p0

    move-object v9, v2

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    move-object v2, v15

    move/from16 v26, v3

    .end local v3    # "firstPosition":I
    .restart local v26    # "firstPosition":I
    move-object/from16 v3, v17

    move/from16 v27, v13

    move-object/from16 v13, v25

    .end local v25    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v27    # "index":I
    move v4, v14

    move-object/from16 v25, v5

    .end local v5    # "focusedChild":Landroid/view/View;
    .local v25, "focusedChild":Landroid/view/View;
    move v5, v10

    move/from16 v28, v14

    move v14, v6

    .end local v6    # "accessibilityFocusPosition":I
    .local v14, "accessibilityFocusPosition":I
    .restart local v28    # "delta":I
    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 1954
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_9

    .line 1919
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_3
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    iget-boolean v1, v7, Landroid/widget/ListView;->mSemScrollingByScrollbar:Z

    if-eqz v1, :cond_16

    .line 1920
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mSpecificTop:I

    .line 1921
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_9

    .line 1923
    .end local v1    # "sel":Landroid/view/View;
    :cond_16
    iget v1, v7, Landroid/widget/ListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 1925
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_9

    .line 1936
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_4
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1937
    .local v1, "selectedPosition":I
    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1944
    .local v2, "sel":Landroid/view/View;
    if-nez v2, :cond_17

    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_17

    .line 1945
    nop

    .line 1946
    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v3

    .line 1947
    .local v3, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_17

    .line 1948
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1981
    .end local v1    # "selectedPosition":I
    .end local v3    # "focusRunnable":Ljava/lang/Runnable;
    :cond_17
    move-object v1, v2

    goto/16 :goto_9

    .line 1927
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v3, "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_5
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 1928
    .local v1, "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1929
    goto/16 :goto_9

    .line 1911
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_6
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    if-eqz v17, :cond_18

    .line 1912
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_9

    .line 1914
    .end local v1    # "sel":Landroid/view/View;
    :cond_18
    invoke-direct {v7, v10, v11}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 1916
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_9

    .line 1931
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v25, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_7
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v25, "focusedChild":Landroid/view/View;
    .restart local v26    # "firstPosition":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1932
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 1933
    .restart local v1    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1934
    goto :goto_9

    .line 1957
    .end local v1    # "sel":Landroid/view/View;
    :goto_6
    if-nez v1, :cond_19

    .line 1958
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    .line 1959
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1960
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1961
    .local v1, "sel":Landroid/view/View;
    goto :goto_9

    .line 1962
    .end local v1    # "sel":Landroid/view/View;
    :cond_19
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1963
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1964
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1965
    .local v1, "sel":Landroid/view/View;
    goto :goto_9

    .line 1967
    .end local v1    # "sel":Landroid/view/View;
    :cond_1a
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_1c

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1c

    .line 1968
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1969
    if-nez v15, :cond_1b

    move v2, v10

    goto :goto_7

    :cond_1b
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1968
    :goto_7
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_9

    .line 1970
    .end local v1    # "sel":Landroid/view/View;
    :cond_1c
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1e

    .line 1971
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1972
    if-nez v16, :cond_1d

    move v2, v10

    goto :goto_8

    :cond_1d
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1971
    :goto_8
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_9

    .line 1974
    .end local v1    # "sel":Landroid/view/View;
    :cond_1e
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1981
    .restart local v1    # "sel":Landroid/view/View;
    :goto_9
    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1984
    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1985
    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1987
    const/4 v2, -0x1

    if-eqz v1, :cond_26

    .line 1992
    iget-boolean v3, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v24, :cond_25

    .line 1994
    :cond_1f
    if-ne v1, v13, :cond_20

    if-eqz v23, :cond_20

    .line 1996
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_21

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    const/4 v3, 0x1

    goto :goto_a

    :cond_22
    const/4 v3, 0x0

    .line 1997
    .local v3, "focusWasTaken":Z
    :goto_a
    if-nez v3, :cond_24

    .line 2001
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 2002
    .local v4, "focused":Landroid/view/View;
    if-eqz v4, :cond_23

    .line 2003
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2005
    :cond_23
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2006
    .end local v4    # "focused":Landroid/view/View;
    goto :goto_b

    .line 2007
    :cond_24
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2008
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2010
    .end local v3    # "focusWasTaken":Z
    :goto_b
    goto :goto_c

    .line 2011
    :cond_25
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2013
    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v7, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_11

    .line 2015
    :cond_26
    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    goto :goto_d

    :cond_27
    const/4 v3, 0x0

    goto :goto_e

    :cond_28
    :goto_d
    const/4 v3, 0x1

    .line 2017
    .local v3, "inTouchMode":Z
    :goto_e
    if-eqz v3, :cond_2a

    .line 2019
    iget v4, v7, Landroid/widget/ListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2020
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_29

    .line 2021
    iget v5, v7, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2023
    .end local v4    # "child":Landroid/view/View;
    :cond_29
    goto :goto_10

    :cond_2a
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_2b

    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_2b

    iget-boolean v4, v7, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_2b

    .line 2027
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2028
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_2c

    .line 2029
    iget v5, v7, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_f

    .line 2031
    .end local v4    # "child":Landroid/view/View;
    :cond_2b
    iget-boolean v4, v7, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_2c

    .line 2033
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/ListView;->mSelectedTop:I

    .line 2034
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10

    .line 2031
    :cond_2c
    :goto_f
    nop

    .line 2039
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v23, :cond_2d

    .line 2040
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 2045
    .end local v3    # "inTouchMode":Z
    :cond_2d
    :goto_11
    const/4 v3, 0x0

    if-eqz v19, :cond_34

    .line 2046
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 2047
    .local v4, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v4, :cond_32

    .line 2048
    if-eqz v21, :cond_2f

    .line 2049
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2050
    nop

    .line 2051
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 2052
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_2e

    if-eqz v5, :cond_2e

    .line 2053
    nop

    .line 2054
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v29

    .line 2053
    invoke-static/range {v29 .. v30}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 2055
    .local v6, "virtualViewId":I
    const/16 v2, 0x40

    invoke-virtual {v5, v6, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2057
    nop

    .end local v6    # "virtualViewId":I
    goto :goto_12

    .line 2058
    :cond_2e
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_12

    .line 2060
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2f
    const/4 v2, -0x1

    if-eq v14, v2, :cond_31

    .line 2062
    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2064
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2062
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2065
    .local v2, "position":I
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2066
    .local v5, "restoreView":Landroid/view/View;
    if-eqz v5, :cond_30

    .line 2067
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2069
    .end local v2    # "position":I
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_30
    goto :goto_14

    .line 2060
    :cond_31
    :goto_12
    goto :goto_14

    .line 2070
    :cond_32
    const/4 v2, -0x1

    if-eq v14, v2, :cond_34

    .line 2071
    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2072
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2071
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2074
    .restart local v2    # "position":I
    if-eqz v22, :cond_33

    .line 2075
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "restoreView":Landroid/view/View;
    goto :goto_13

    .line 2077
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_33
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2079
    .restart local v5    # "restoreView":Landroid/view/View;
    :goto_13
    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_34

    if-eq v4, v5, :cond_34

    .line 2080
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2081
    if-eqz v5, :cond_34

    .line 2082
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2090
    .end local v2    # "position":I
    .end local v4    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_34
    :goto_14
    iget-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v2, :cond_35

    iget-boolean v2, v7, Landroid/widget/ListView;->mSemAdapterChanged:Z

    if-eqz v2, :cond_38

    :cond_35
    iget-boolean v2, v7, Landroid/widget/ListView;->mSemEnableFillOut:Z

    if-eqz v2, :cond_38

    .line 2091
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 2092
    .local v2, "lastVisiblePos":I
    iget v4, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_37

    if-ltz v2, :cond_37

    .line 2093
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2094
    .local v4, "lastView":Landroid/view/View;
    if-nez v4, :cond_36

    const/4 v5, -0x1

    goto :goto_15

    :cond_36
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_15
    iput v5, v7, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    .line 2095
    .end local v4    # "lastView":Landroid/view/View;
    goto :goto_16

    .line 2096
    :cond_37
    const/4 v4, -0x1

    iput v4, v7, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    .line 2103
    .end local v2    # "lastVisiblePos":I
    :cond_38
    :goto_16
    if-eqz v23, :cond_39

    .line 2104
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 2105
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2108
    :cond_39
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/ListView;->mLayoutMode:I

    .line 2109
    iput-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    .line 2111
    iput-boolean v2, v7, Landroid/widget/ListView;->mSemAdapterChanged:Z

    .line 2114
    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_3a

    .line 2115
    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2116
    iput-object v3, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2118
    :cond_3a
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/ListView;->mNeedSync:Z

    .line 2119
    iget v2, v7, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2121
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 2123
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_3b

    .line 2124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2127
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2129
    .end local v0    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v13    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v19    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v21    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v22    # "mInsideViewAccFocused":Z
    .end local v23    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v24    # "focusFirstItemTemporarily":Z
    .end local v25    # "focusedChild":Landroid/view/View;
    .end local v26    # "firstPosition":I
    .end local v27    # "index":I
    .end local v28    # "delta":I
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_3c

    .line 2130
    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2132
    :cond_3c
    if-nez v8, :cond_3d

    .line 2133
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2136
    :cond_3d
    return-void

    .line 1809
    .restart local v10    # "childrenTop":I
    .restart local v11    # "childrenBottom":I
    .restart local v12    # "childCount":I
    .local v13, "index":I
    .local v14, "delta":I
    .restart local v15    # "oldSel":Landroid/view/View;
    .restart local v16    # "oldFirst":Landroid/view/View;
    .restart local v17    # "newSel":Landroid/view/View;
    .restart local v18    # "dataChanged":Z
    :cond_3e
    move/from16 v27, v13

    move/from16 v28, v14

    .end local v13    # "index":I
    .end local v14    # "delta":I
    .restart local v27    # "index":I
    .restart local v28    # "delta":I
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1813
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1814
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "blockLayoutRequests":Z
    .end local p0    # "this":Landroid/widget/ListView;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2129
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v27    # "index":I
    .end local v28    # "delta":I
    .restart local v8    # "blockLayoutRequests":Z
    .restart local p0    # "this":Landroid/widget/ListView;
    :catchall_0
    move-exception v0

    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v1, :cond_3f

    .line 2130
    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2132
    :cond_3f
    if-nez v8, :cond_40

    .line 2133
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2135
    :cond_40
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method greylist lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2410
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2411
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 2415
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2416
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_2

    .line 2417
    if-eqz p2, :cond_1

    .line 2418
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2419
    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2420
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2423
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2424
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2425
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2430
    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    .line 2434
    :cond_3
    return p1

    .line 2431
    :cond_4
    :goto_2
    return v1

    .line 2412
    .end local v2    # "count":I
    :cond_5
    :goto_3
    return v1
.end method

.method greylist-max-o lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 2450
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2451
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2456
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2457
    .local v2, "after":I
    if-eq v2, v1, :cond_1

    .line 2458
    return v2

    .line 2462
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2463
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2464
    if-eqz p3, :cond_3

    .line 2465
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2466
    :goto_0
    if-le p2, p1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2467
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2469
    :cond_2
    if-gt p2, p1, :cond_5

    .line 2470
    return v1

    .line 2473
    :cond_3
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2474
    :goto_1
    if-ge p2, p1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2475
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2477
    :cond_4
    if-lt p2, p1, :cond_5

    .line 2478
    return v1

    .line 2482
    :cond_5
    return p2

    .line 2452
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_6
    :goto_2
    return v1
.end method

.method final greylist-max-p measureHeightOfChildren(IIIII)I
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 1431
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1432
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_0

    .line 1433
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4

    .line 1437
    :cond_0
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1438
    .local v4, "returnedHeight":I
    iget v5, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1441
    .local v5, "dividerHeight":I
    const/4 v6, 0x0

    .line 1446
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    move v8, v9

    .line 1447
    .end local p3    # "endPosition":I
    .local v8, "endPosition":I
    iget-object v9, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1448
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    .line 1449
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1451
    .local v11, "isScrap":[Z
    move/from16 v12, p2

    .local v12, "i":I
    :goto_1
    if-gt v12, v8, :cond_7

    .line 1452
    invoke-virtual {v0, v12, v11}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1454
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1456
    if-lez v12, :cond_2

    .line 1458
    add-int/2addr v4, v5

    .line 1462
    :cond_2
    if-eqz v10, :cond_3

    .line 1463
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1462
    invoke-virtual {v9, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1464
    invoke-virtual {v9, v13, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1467
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v4, v15

    .line 1469
    if-lt v4, v1, :cond_5

    .line 1475
    if-ltz v2, :cond_4

    if-le v12, v2, :cond_4

    if-lez v6, :cond_4

    if-eq v4, v1, :cond_4

    .line 1476
    move v7, v6

    goto :goto_2

    .line 1477
    :cond_4
    move v7, v1

    .line 1472
    :goto_2
    return v7

    .line 1480
    :cond_5
    if-ltz v2, :cond_6

    if-lt v12, v2, :cond_6

    .line 1481
    move v6, v4

    .line 1451
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1487
    .end local v13    # "child":Landroid/view/View;
    :cond_7
    move/from16 v14, p1

    return v4
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 1284
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1288
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1289
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 3

    .line 4071
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 4073
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 4074
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4075
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4076
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4075
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4078
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 4080
    :cond_1
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 4005
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4007
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4008
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 4009
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 4010
    .local v2, "closestChildTop":I
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 4011
    iget v3, p0, Landroid/widget/ListView;->mScrollX:I

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4015
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 4016
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 4017
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 4022
    :cond_0
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 4023
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 4024
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 4025
    .local v5, "childCount":I
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 4027
    .local v6, "firstPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_3

    .line 4029
    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4030
    goto :goto_1

    .line 4033
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4034
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4035
    invoke-virtual {p0, v8, v3}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4036
    invoke-static {p3, v3, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 4038
    .local v9, "distance":I
    if-ge v9, v4, :cond_2

    .line 4039
    move v4, v9

    .line 4040
    move v1, v7

    .line 4041
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4027
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4046
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "childCount":I
    .end local v6    # "firstPosition":I
    .end local v7    # "i":I
    :cond_3
    if-ltz v1, :cond_4

    .line 4047
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 4049
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4052
    :goto_2
    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v3, :cond_5

    .line 4053
    new-instance v3, Landroid/widget/ListView$2;

    invoke-direct {v3, p0}, Landroid/widget/ListView$2;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4060
    :cond_5
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4381
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4383
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4384
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 4385
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 4386
    .local v1, "isSelected":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 4388
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4389
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4342
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4344
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4345
    .local v0, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 4346
    .local v1, "selectionMode":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 4348
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4350
    if-lez v0, :cond_0

    .line 4351
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4353
    :cond_0
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1687
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1688
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 1689
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1691
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2523
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2528
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2533
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1312
    move-object v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1314
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1315
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1316
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1317
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1319
    .local v1, "heightSize":I
    const/4 v2, 0x0

    .line 1320
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1321
    .local v3, "childHeight":I
    const/4 v4, 0x0

    .line 1323
    .local v4, "childState":I
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_0
    iput v5, v6, Landroid/widget/ListView;->mItemCount:I

    .line 1324
    iget v5, v6, Landroid/widget/ListView;->mItemCount:I

    if-lez v5, :cond_2

    if-eqz v8, :cond_1

    if-nez v9, :cond_2

    .line 1326
    :cond_1
    iget-object v5, v6, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    .line 1328
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1331
    invoke-direct {p0, v5, v10, v7, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1333
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1334
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1335
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v4

    .line 1337
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1338
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    iget v11, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1337
    invoke-virtual {v10, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1339
    iget-object v10, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v11, -0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1344
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    move v10, v2

    move v11, v3

    move v12, v4

    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "childState":I
    .local v10, "childWidth":I
    .local v11, "childHeight":I
    .local v12, "childState":I
    if-nez v8, :cond_3

    .line 1345
    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    .line 1346
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    .end local v0    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_1

    .line 1348
    .end local v2    # "widthSize":I
    .restart local v0    # "widthSize":I
    :cond_3
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v0

    move v13, v2

    .line 1351
    .end local v0    # "widthSize":I
    .local v13, "widthSize":I
    :goto_1
    if-nez v9, :cond_4

    .line 1352
    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v11

    .line 1353
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v1, v0, v2

    move v14, v1

    goto :goto_2

    .line 1351
    :cond_4
    move v14, v1

    .line 1356
    .end local v1    # "heightSize":I
    .local v14, "heightSize":I
    :goto_2
    const/high16 v0, -0x80000000

    if-ne v9, v0, :cond_5

    .line 1358
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v1, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v14

    .line 1361
    :cond_5
    invoke-virtual {p0, v13, v14}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1363
    iput v7, v6, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1364
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1293
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1294
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1295
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1296
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1297
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1298
    .local v2, "childBottom":I
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v4, p2, v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1299
    .local v3, "offset":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1300
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1301
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1303
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1306
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childBottom":I
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1307
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1705
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1706
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 1707
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1709
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2700
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 2701
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2702
    .local v2, "nextPage":I
    const/4 v3, 0x0

    .local v3, "down":Z
    goto :goto_0

    .line 2703
    .end local v2    # "nextPage":I
    .end local v3    # "down":Z
    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_5

    .line 2704
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2705
    .restart local v2    # "nextPage":I
    const/4 v3, 0x1

    .line 2710
    .restart local v3    # "down":Z
    :goto_0
    if-ltz v2, :cond_4

    .line 2711
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 2712
    .local v4, "position":I
    if-ltz v4, :cond_4

    .line 2713
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2714
    iget v0, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2716
    if-eqz v3, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_1

    .line 2717
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2720
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 2721
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2724
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2726
    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    .line 2728
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2729
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2730
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2733
    :cond_3
    return v1

    .line 2737
    .end local v4    # "position":I
    :cond_4
    return v0

    .line 2707
    .end local v2    # "nextPage":I
    .end local v3    # "down":Z
    :cond_5
    return v0
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4358
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4359
    return v1

    .line 4362
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4364
    :pswitch_0
    const/4 v0, -0x1

    const-string v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4365
    .local v0, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4366
    .local v2, "position":I
    if-ltz v0, :cond_1

    .line 4369
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4370
    return v1

    .line 4375
    .end local v0    # "row":I
    .end local v2    # "position":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method blacklist performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 4424
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4425
    const/4 v0, 0x0

    return v0

    .line 4429
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1399
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 537
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 543
    :cond_0
    const/4 v0, 0x1

    .line 545
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 546
    return v0

    .line 548
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 436
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 442
    :cond_0
    const/4 v0, 0x1

    .line 444
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 445
    return v0

    .line 447
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePendingCallbacks()V
    .locals 0

    .line 4435
    invoke-super {p0}, Landroid/widget/AbsListView;->removePendingCallbacks()V

    .line 4436
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 700
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 703
    .local v0, "rectTopWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 706
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 707
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    .line 708
    .local v2, "listUnfadedTop":I
    add-int v3, v2, v1

    .line 709
    .local v3, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 711
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 713
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v5, :cond_0

    if-le v0, v4, :cond_1

    .line 714
    :cond_0
    add-int/2addr v2, v4

    .line 718
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 719
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 721
    .local v6, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 723
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_2

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_3

    .line 725
    :cond_2
    sub-int/2addr v3, v4

    .line 729
    :cond_3
    const/4 v7, 0x0

    .line 731
    .local v7, "scrollYDelta":I
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_6

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-le v9, v2, :cond_6

    .line 736
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_4

    .line 738
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_0

    .line 741
    :cond_4
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 745
    :goto_0
    sub-int v9, v6, v3

    .line 746
    .local v9, "distanceToBottom":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 747
    .end local v9    # "distanceToBottom":I
    :cond_5
    goto :goto_2

    :cond_6
    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_5

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v3, :cond_5

    .line 752
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_7

    .line 754
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_1

    .line 757
    :cond_7
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 761
    :goto_1
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 762
    .local v9, "top":I
    sub-int v11, v9, v2

    .line 763
    .local v11, "deltaToTop":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 766
    .end local v9    # "top":I
    .end local v11    # "deltaToTop":I
    :goto_2
    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v8, v10

    .line 767
    .local v8, "scroll":Z
    :goto_3
    if-eqz v8, :cond_9

    .line 768
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 769
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 771
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 773
    :cond_9
    return v8
.end method

.method greylist-max-o resetList()V
    .locals 1

    .line 652
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 653
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 655
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 658
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 157
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 590
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 594
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 595
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 597
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 600
    :cond_1
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 598
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 603
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 604
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 607
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 610
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 611
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    iput v0, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 612
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 613
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 615
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 616
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 618
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 621
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 622
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_2

    .line 624
    .end local v0    # "position":I
    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 626
    .restart local v0    # "position":I
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 627
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 629
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_4

    .line 631
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 633
    .end local v0    # "position":I
    :cond_4
    goto :goto_3

    .line 634
    :cond_5
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 635
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 637
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 639
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->semGetRoundedCorners()I

    move-result v0

    if-eqz v0, :cond_6

    .line 640
    sget-boolean v0, Landroid/widget/ListView;->sIsSamsungBasicInteraction:Z

    iput-boolean v0, p0, Landroid/widget/ListView;->mSemEnableFillOut:Z

    .line 642
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 643
    return-void
.end method

.method public blacklist setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 233
    iput-object p1, p0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 234
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .locals 2
    .param p1, "color"    # I

    .line 3591
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3592
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3593
    if-eqz v0, :cond_2

    .line 3594
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 3595
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3597
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3599
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3600
    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 3885
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3886
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    .line 3888
    :cond_0
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3890
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3891
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3892
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3893
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3894
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 3911
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3912
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3913
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3914
    return-void
.end method

.method public blacklist setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 238
    iput-object p1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 240
    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    new-instance v1, Landroid/widget/ListView$1;

    invoke-direct {v1, p0}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 246
    return-void
.end method

.method public whitelist setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .line 3950
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3951
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3952
    return-void
.end method

.method public whitelist setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .line 3926
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3927
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3928
    return-void
.end method

.method public whitelist setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .line 3554
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3555
    if-nez p1, :cond_0

    .line 3556
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3558
    :cond_0
    return-void
.end method

.method public whitelist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .line 3992
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3993
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3994
    return-void
.end method

.method public whitelist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .line 3971
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3972
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3973
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3975
    :cond_0
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 572
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 573
    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 2364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2365
    return-void
.end method

.method public whitelist setSelectionAfterHeaderView()V
    .locals 2

    .line 2490
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2491
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2492
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2493
    return-void

    .line 2496
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2497
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2499
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2500
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2503
    :goto_0
    return-void
.end method

.method greylist setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 2375
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2376
    const/4 v0, 0x0

    .line 2378
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2380
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_1

    .line 2381
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_0

    .line 2382
    const/4 v0, 0x1

    goto :goto_0

    .line 2383
    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_1

    .line 2384
    const/4 v0, 0x1

    .line 2388
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_2

    .line 2389
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2392
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2394
    if-eqz v0, :cond_3

    .line 2395
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2397
    :cond_3
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1062
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1063
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1052
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1053
    return-void
.end method

.method greylist-max-r trackMotionScroll(II)Z
    .locals 2
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 2141
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 2142
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2143
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2144
    return v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 4404
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal()V
    .locals 3

    .line 4409
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4410
    return-void
.end method
