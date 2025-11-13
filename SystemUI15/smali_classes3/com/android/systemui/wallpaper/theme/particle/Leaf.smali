.class public final Lcom/android/systemui/wallpaper/theme/particle/Leaf;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cx:F

.field public cy:F

.field public final leafKind:I

.field public final leafSize:I

.field public final mRandom:Ljava/util/Random;

.field public final mXSpeed:I

.field public final mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    sget v1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    sget v1, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    return-void
.end method
