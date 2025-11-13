.class public final enum Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

.field public static final enum POS_X:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

.field public static final enum POS_Y:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;


# instance fields
.field final factorType:Lcom/samsung/android/nexus/particle/emitter/FactorType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v2, "WIDTH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v3, "HEIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v4, "POS_X"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v5, "POS_Y"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    sput-object v3, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    new-instance v4, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v6, "ROTATION"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v7, "ALPHA"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v6, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v8, "SCALE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v9, "SCALE_X"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v8, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v10, "SCALE_Y"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v9, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v11, "COLOR_ALPHA"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v10, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v12, "COLOR_RED"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v11, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v13, "COLOR_GREEN"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v12, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v14, "COLOR_BLUE"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v13, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v14, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v15, "COLOR_HUE"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v14, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v15, "COLOR_SATURATION"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    new-instance v15, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const-string v13, "COLOR_VALUE"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;-><init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    filled-new-array/range {v0 .. v15}, [Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/nexus/particle/emitter/FactorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/nexus/particle/emitter/FactorType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->factorType:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;
    .locals 1

    const-class v0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    invoke-virtual {v0}, [Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/nexus/particle/emitter/ParentFactorType;

    return-object v0
.end method
