.class public final Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Bradford:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;


# instance fields
.field public final transform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;-><init>([F)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;->Bradford:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f652546    # 0.8951f
        -0x40bff2e5    # -0.7502f
        0x3d1f559b    # 0.0389f
        0x3e886595    # 0.2664f
        0x3fdb53f8    # 1.7135f
        -0x4273b646    # -0.0685f
        -0x41dab9f5    # -0.1614f
        0x3d1652bd    # 0.0367f
        0x3f83c9ef    # 1.0296f
    .end array-data
.end method

.method public constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;->transform:[F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Bradford"

    return-object p0
.end method
