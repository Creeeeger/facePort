.class public final Lcom/android/systemui/HardwareBgDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLayers:[Landroid/graphics/drawable/Drawable;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRoundTop:Z


# direct methods
.method public constructor <init>(ZZLandroid/content/Context;)V
    .locals 4

    if-eqz p2, :cond_0

    const v0, 0x7f080fc6

    goto :goto_0

    :cond_0
    const v0, 0x7f080fc4

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, v3

    goto :goto_2

    :cond_1
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v2, v1

    if-eqz p2, :cond_2

    const p2, 0x7f080fd1

    goto :goto_1

    :cond_2
    const p2, 0x7f080fc5

    :goto_1
    invoke-virtual {p3, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, v2, v3

    move-object p2, v2

    :goto_2
    aget-object v0, p2, v3

    const v1, 0x1010433

    invoke-static {v1, p3}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HardwareBgDrawable;-><init>(Z[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Z[Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    iput-object p2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need 2 layers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v6

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v5

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
