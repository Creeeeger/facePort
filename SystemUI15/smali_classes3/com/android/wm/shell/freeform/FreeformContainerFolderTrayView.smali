.class public Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCloseButton:Landroid/widget/ImageView;

.field public final mCloseButtonSize:I

.field public mHeight:I

.field public final mItemMargin:Landroid/graphics/Rect;

.field public mOpenAllAppsButton:Landroid/widget/ImageView;

.field public final mOpenAllAppsButtonSize:I

.field public final mOutline:Landroid/graphics/Outline;

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mStrokePath:Landroid/graphics/Path;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpRectF:Landroid/graphics/RectF;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Outline;

    invoke-direct {p2}, Landroid/graphics/Outline;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpRectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mItemMargin:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060156

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703fc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703f3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButtonSize:I

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v2}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v3}, Landroid/graphics/Outline;->getRadius()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0477

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0474

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButton:Landroid/widget/ImageView;

    return-void
.end method
