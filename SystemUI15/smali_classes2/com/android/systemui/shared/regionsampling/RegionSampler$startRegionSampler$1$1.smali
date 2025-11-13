.class public final Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iput-object p2, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->$sampledRegionWithOffset:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->this$0:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object p0, p0, Lcom/android/systemui/shared/regionsampling/RegionSampler$startRegionSampler$1$1;->$sampledRegionWithOffset:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/android/systemui/shared/regionsampling/RegionSampler;->initialSampling:Landroid/app/WallpaperColors;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method
