.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    const-string v1, "FloatingIcon"

    if-nez v0, :cond_0

    const-string/jumbo p0, "setSystemGestureExclusionRects : overlayView is Null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "excludeZone : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
