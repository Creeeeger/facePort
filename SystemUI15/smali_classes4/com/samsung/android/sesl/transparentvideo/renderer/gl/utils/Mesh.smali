.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

.field public static final QUAD_2D:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

.field public static final QUAD_2D_UV:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

.field public static final QUAD_2D_UV_FLIP:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;


# instance fields
.field public final data:[F

.field public final dimension:I

.field public final order:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh$Companion;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    const/16 v1, 0x8

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;-><init>([FII)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;-><init>([FII)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D_UV:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;-><init>([FII)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->QUAD_2D_UV_FLIP:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    const/16 v1, 0xc

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;-><init>([FII)V

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;-><init>([FII)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>([FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->data:[F

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->dimension:I

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/Mesh;->order:I

    return-void
.end method
