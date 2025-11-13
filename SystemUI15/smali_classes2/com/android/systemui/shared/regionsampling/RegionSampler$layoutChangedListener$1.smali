.class public final Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object p1, p1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    if-ltz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object p1, p1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    if-gez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object p2, p1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V

    :cond_1
    iget-object p2, p1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/shared/regionsampling/RegionSampler;->layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-virtual {p2, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-boolean p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->regionSamplingEnabled:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->layoutChangedListener:Lcom/android/systemui/shared/regionsampling/RegionSampler$layoutChangedListener$1;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->sampledView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->calculateScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->convertBounds(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/RectF;->left:F

    float-to-double p2, p2

    const-wide/16 p4, 0x0

    cmpg-double p2, p2, p4

    if-ltz p2, :cond_7

    iget p2, p1, Landroid/graphics/RectF;->right:F

    float-to-double p2, p2

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p2, p6

    if-gtz p2, :cond_7

    iget p2, p1, Landroid/graphics/RectF;->top:F

    float-to-double p2, p2

    cmpg-double p2, p2, p4

    if-ltz p2, :cond_7

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double p2, p2

    cmpl-double p2, p2, p6

    if-lez p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    if-eqz p3, :cond_6

    iget-boolean p4, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    if-eqz p4, :cond_5

    const/4 v0, 0x2

    :cond_5
    invoke-virtual {p3, p0, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->bgExecutor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_7

    new-instance p3, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;-><init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method
