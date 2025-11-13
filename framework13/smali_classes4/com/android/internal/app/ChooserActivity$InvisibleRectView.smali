.class public Lcom/android/internal/app/ChooserActivity$InvisibleRectView;
.super Landroid/widget/ImageView;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvisibleRectView"
.end annotation


# static fields
.field private static final blacklist OPACITY:I = 0x5a


# instance fields
.field private blacklist mInvisibleRect:Landroid/graphics/RectF;

.field private blacklist mOuterRect:Landroid/graphics/RectF;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 7592
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7593
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 7596
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7597
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 7600
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7601
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->init()V

    .line 7602
    return-void
.end method

.method private blacklist init()V
    .locals 2

    .line 7581
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    .line 7582
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    .line 7583
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mInvisibleRect:Landroid/graphics/RectF;

    .line 7584
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mOuterRect:Landroid/graphics/RectF;

    .line 7586
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7587
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7588
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7589
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 7606
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7607
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mOuterRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 7608
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mInvisibleRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 7609
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 7610
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 7611
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7612
    return-void
.end method

.method public blacklist setInvisibleRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 7615
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mInvisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 7616
    return-void
.end method

.method public blacklist setOuterRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 7619
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$InvisibleRectView;->mOuterRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 7620
    return-void
.end method
