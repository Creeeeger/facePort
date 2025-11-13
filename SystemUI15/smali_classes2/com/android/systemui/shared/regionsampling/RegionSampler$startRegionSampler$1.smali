.class public final Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $sampledRegionWithOffset:Landroid/graphics/RectF;

.field public final synthetic this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;->$sampledRegionWithOffset:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object v1, v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->wallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->isLockscreen:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->initialSampling:Landroid/app/WallpaperColors;

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object v1, v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->mainExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1;->$sampledRegionWithOffset:Landroid/graphics/RectF;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;-><init>(Lcom/android/systemui/shared/regionsampling/RegionSampler;Landroid/graphics/RectF;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
