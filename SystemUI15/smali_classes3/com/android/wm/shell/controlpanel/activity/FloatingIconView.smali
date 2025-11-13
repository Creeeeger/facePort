.class public Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIconArea:Landroid/view/View;

.field public final mIconSize:I

.field public mIconView:Landroid/view/View;

.field public final mInsetsComputer:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTouchableRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpRegion:Landroid/graphics/Region;

    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;)V

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mInsetsComputer:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconSize:I

    return-void
.end method


# virtual methods
.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconSize:I

    add-int v5, v2, v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mTouchableRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return v0
.end method
