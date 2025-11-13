.class public final Lcom/android/systemui/shade/NPVCDownEventState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public allowExpandForSmallExpansion:Z

.field public final asStringList$delegate:Lkotlin/Lazy;

.field public canCollapseOnQQS:Z

.field public collapsed:Z

.field public dozing:Z

.field public lastEventSynthesized:Z

.field public listenForHeadsUp:Z

.field public qsTouchAboveFalsingThreshold:Z

.field public timeStamp:J

.field public touchSlopExceededBeforeDown:Z

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/shade/NPVCDownEventState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/NPVCDownEventState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v11, "TouchSlopExceededBeforeDown"

    const-string v12, "LastEventSynthesized"

    const-string v2, "Timestamp"

    const-string v3, "X"

    const-string v4, "Y"

    const-string v5, "QSTouchAboveFalsingThreshold"

    const-string v6, "Dozing"

    const-string v7, "Collapsed"

    const-string v8, "CanCollapseOnQQS"

    const-string v9, "ListenForHeadsUp"

    const-string v10, "AllowExpandForSmallExpansion"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shade/NPVCDownEventState;->TABLE_HEADERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(JFFZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/shade/NPVCDownEventState;->timeStamp:J

    iput p3, p0, Lcom/android/systemui/shade/NPVCDownEventState;->x:F

    iput p4, p0, Lcom/android/systemui/shade/NPVCDownEventState;->y:F

    iput-boolean p5, p0, Lcom/android/systemui/shade/NPVCDownEventState;->qsTouchAboveFalsingThreshold:Z

    iput-boolean p6, p0, Lcom/android/systemui/shade/NPVCDownEventState;->dozing:Z

    iput-boolean p7, p0, Lcom/android/systemui/shade/NPVCDownEventState;->collapsed:Z

    iput-boolean p8, p0, Lcom/android/systemui/shade/NPVCDownEventState;->canCollapseOnQQS:Z

    iput-boolean p9, p0, Lcom/android/systemui/shade/NPVCDownEventState;->listenForHeadsUp:Z

    iput-boolean p10, p0, Lcom/android/systemui/shade/NPVCDownEventState;->allowExpandForSmallExpansion:Z

    iput-boolean p11, p0, Lcom/android/systemui/shade/NPVCDownEventState;->touchSlopExceededBeforeDown:Z

    iput-boolean p12, p0, Lcom/android/systemui/shade/NPVCDownEventState;->lastEventSynthesized:Z

    new-instance p1, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/NPVCDownEventState$asStringList$2;-><init>(Lcom/android/systemui/shade/NPVCDownEventState;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/NPVCDownEventState;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(JFFZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move v10, v6

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move v11, v6

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move v12, v6

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v6, p12

    :goto_a
    move-wide p1, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v6

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/shade/NPVCDownEventState;-><init>(JFFZZZZZZZZ)V

    return-void
.end method
