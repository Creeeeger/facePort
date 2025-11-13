.class public final enum Lcom/samsung/android/nexus/particle/emitter/FactorType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/nexus/particle/emitter/FactorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;


# instance fields
.field final accelerationIdx:I

.field final idx:I

.field final max:F

.field final min:F

.field final opType:I

.field rangeChecker:Lcom/samsung/android/nexus/base/utils/RangeChecker;

.field final speedIdx:I

.field final valueIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v0, v1

    new-instance v2, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/high16 v3, 0x4f000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v4, "WIDTH"

    const/4 v14, 0x0

    invoke-direct {v1, v4, v14, v14, v2}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v1, v2

    new-instance v4, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    invoke-direct {v4, v15, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v3, "HEIGHT"

    const/4 v11, 0x1

    invoke-direct {v2, v3, v11, v14, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v2, v3

    const-string v4, "POS"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v3, v4

    const-string v5, "POS_X"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v4, v5

    const-string v6, "POS_Y"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v5, v6

    const-string v7, "ROTATION"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v6, v7

    new-instance v8, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v8, v13, v15}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v17, "ALPHA"

    const/16 v18, 0x6

    const/16 v19, 0x1

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v7, v8

    const-string v9, "SCALE"

    const/4 v12, 0x7

    invoke-direct {v8, v9, v12, v11, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIF)V

    sput-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v8, v9

    const-string v12, "SCALE_X"

    const/16 v14, 0x8

    invoke-direct {v9, v12, v14, v11, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIF)V

    sput-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v9, v12

    const-string v14, "SCALE_Y"

    move-object/from16 v17, v15

    const/16 v15, 0x9

    invoke-direct {v12, v14, v15, v11, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIF)V

    sput-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v10, v11

    new-instance v12, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    const/high16 v14, 0x437f0000    # 255.0f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v15, "COLOR_ALPHA"

    move-object/from16 v18, v0

    const/16 v0, 0xa

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-direct {v11, v15, v0, v1, v12}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v11, v0

    new-instance v12, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    invoke-direct {v12, v13, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v15, "COLOR_RED"

    move-object/from16 v20, v2

    const/16 v2, 0xb

    invoke-direct {v0, v15, v2, v1, v12}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v12, v0

    new-instance v2, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    invoke-direct {v2, v13, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v15, "COLOR_GREEN"

    move-object/from16 v16, v13

    const/16 v13, 0xc

    invoke-direct {v0, v15, v13, v1, v2}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object/from16 v2, v16

    move-object v13, v0

    new-instance v15, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    invoke-direct {v15, v2, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v14, "COLOR_BLUE"

    move-object/from16 v21, v3

    const/16 v3, 0xd

    invoke-direct {v0, v14, v3, v1, v15}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object v14, v0

    new-instance v3, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    const/high16 v15, 0x43b40000    # 360.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v3, v2, v15}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v15, "COLOR_HUE"

    move-object/from16 v22, v4

    const/16 v4, 0xe

    invoke-direct {v0, v15, v4, v1, v3}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object/from16 v3, v17

    move-object v15, v0

    new-instance v4, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    move-object/from16 v17, v5

    const-string v5, "COLOR_SATURATION"

    move-object/from16 v23, v6

    const/16 v6, 0xf

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object/from16 v16, v0

    new-instance v4, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    const-string v2, "COLOR_VALUE"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-object/from16 v5, v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    filled-new-array/range {v0 .. v16}, [Lcom/samsung/android/nexus/particle/emitter/FactorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Lcom/samsung/android/nexus/base/utils/RangeChecker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    mul-int/lit8 p2, p1, 0x3

    iput p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    mul-int/lit8 p2, p1, 0x3

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    iput p4, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->min:F

    iput p5, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    iput-object p6, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->rangeChecker:Lcom/samsung/android/nexus/base/utils/RangeChecker;

    iput p3, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->opType:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFLcom/samsung/android/nexus/base/utils/RangeChecker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Lcom/samsung/android/nexus/base/utils/RangeChecker;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/nexus/base/utils/RangeChecker;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/nexus/particle/emitter/FactorType;
    .locals 1

    const-class v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/nexus/particle/emitter/FactorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-virtual {v0}, [Lcom/samsung/android/nexus/particle/emitter/FactorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/nexus/particle/emitter/FactorType;

    return-object v0
.end method
