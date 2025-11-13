.class public Lcom/android/internal/widget/MessagingImageMessage;
.super Landroid/widget/ImageView;
.source "MessagingImageMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MessagingImageMessage"

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingImageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActualHeight:I

.field private blacklist mActualWidth:I

.field private blacklist mAspectRatio:F

.field private blacklist mDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mExtraSpacing:I

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private final blacklist mImageRounding:I

.field private blacklist mIsIsolated:Z

.field private final blacklist mIsolatedSize:I

.field private final blacklist mMaxImageHeight:I

.field private final blacklist mMinImageHeight:I

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMaxHeight(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;
    .locals 5

    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    nop

    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900e3

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    sget-object v3, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MessagingImageMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-direct {v1, p2}, Lcom/android/internal/widget/MessagingImageMessage;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/MessagingImageMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->recycle()V

    invoke-static {p0, p1, p3}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    return-object v3

    :cond_1
    return-object v1
.end method

.method public static blacklist dropCache()V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    return-void
.end method

.method private blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    return-void
.end method


# virtual methods
.method public blacklist finalizeInflate()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist getActualHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    return v0
.end method

.method public blacklist getActualWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    return v0
.end method

.method public blacklist getConsumedLines()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getExtraSpacing()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    return v0
.end method

.method public blacklist getMeasuredType()I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MessagingImageMessage"

    const-string/jumbo v2, "getMeasuredType() after recycle()!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMeasuredHeight()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    :goto_0
    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v0, v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    const/4 v1, 0x2

    return v1

    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eq v0, v5, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public blacklist getRoundedRectPath()Landroid/graphics/Path;
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    sub-int v4, v1, v0

    iget v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-int v7, v3, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    add-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v10, v0

    add-float/2addr v10, v5

    int-to-float v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    sub-float/2addr v8, v5

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v1

    int-to-float v11, v2

    add-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    sub-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    int-to-float v10, v1

    sub-float/2addr v10, v5

    int-to-float v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-float/2addr v8, v5

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v0

    int-to-float v11, v3

    sub-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    return-object v7
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "MessagingImageMessage"

    const-string/jumbo v1, "onDraw() after recycle()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getRoundedRectPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualWidth(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualHeight(I)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "MessagingImageMessage"

    const-string/jumbo v1, "onMeasure() after recycle()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public blacklist recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    return-void
.end method

.method public blacklist setActualHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    return-void
.end method

.method public blacklist setActualWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    return-void
.end method

.method public blacklist setIsolated(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0

    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ImageResolver;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v2

    nop

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "MessagingImageMessage"

    const-string v4, "Drawable with 0 intrinsic height was returned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iput-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->finalizeInflate()V

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
