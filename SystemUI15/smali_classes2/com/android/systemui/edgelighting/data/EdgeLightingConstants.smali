.class public final Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_COLOR_LIST:[I

.field public static final DEFAULT_COLOR_NAME_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->DEFAULT_COLOR_LIST:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->DEFAULT_COLOR_NAME_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xfc7e02
        -0x2a999
        -0x1cd2d3
        -0xe84ed
        -0x41229d
        -0xcf358e
        -0xff4243
        -0x784d2b
        -0xa3a507
        -0x3b8e8f
        -0x60ce51
    .end array-data

    :array_1
    .array-data 4
        0x7f1303b7
        0x7f1303c1
        0x7f1303c3
        0x7f1303bf
        0x7f1303bc
        0x7f1303ba
        0x7f1303c4
        0x7f1303c5
        0x7f1303b8
        0x7f1303bb
        0x7f1303c2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
