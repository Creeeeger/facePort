.class public final Lcom/android/systemui/wallpaper/theme/particle/Snow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FIXEDALPHAS:[I

.field public static final FIXEDRADIUS:[I


# instance fields
.field public alpha:I

.field public cx:F

.field public cy:F

.field public final mRandom:Ljava/util/Random;

.field public final mXSpeed:I

.field public final mYSpeed:I

.field public final radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDRADIUS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x66
        0x66
        0x66
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mRandom:Ljava/util/Random;

    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsWidth:I

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    sget v0, Lcom/android/systemui/wallpaper/theme/DensityUtil;->sMetricsHeight:I

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDRADIUS:[I

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->radius:I

    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->FIXEDALPHAS:[I

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mXSpeed:I

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Snow;->mYSpeed:I

    return-void
.end method
