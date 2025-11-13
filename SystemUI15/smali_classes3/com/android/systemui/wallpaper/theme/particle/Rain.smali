.class public final Lcom/android/systemui/wallpaper/theme/particle/Rain;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final speed:[D


# instance fields
.field public final mRandom:Ljava/util/Random;

.field public final mXSpeed:D

.field public final mYSpeed:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x10

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mXSpeed:D

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mYSpeed:I

    return-void
.end method
