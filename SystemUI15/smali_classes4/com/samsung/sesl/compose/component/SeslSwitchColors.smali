.class public final Lcom/samsung/sesl/compose/component/SeslSwitchColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final checkedThumbColor:J

.field public final checkedTrackColor:J

.field public final disabledCheckedThumbColor:J

.field public final disabledCheckedTrackColor:J

.field public final disabledUncheckedThumbColor:J

.field public final disabledUncheckedTrackColor:J

.field public final uncheckedThumbColor:J

.field public final uncheckedTrackColor:J


# direct methods
.method private constructor <init>(JJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->checkedThumbColor:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->uncheckedThumbColor:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledCheckedThumbColor:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledUncheckedThumbColor:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->checkedTrackColor:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->uncheckedTrackColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledCheckedTrackColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledUncheckedTrackColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/samsung/sesl/compose/component/SeslSwitchColors;-><init>(JJJJJJJJ)V

    return-void
.end method
