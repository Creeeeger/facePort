.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activeTrackColor:J

.field public final activeTrackSecondaryColor:J

.field public final disabledActiveTrackColor:J

.field public final disabledActiveTrackSecondaryColor:J

.field public final disabledInactiveTrackColor:J

.field public final disabledInactiveTrackSecondaryColor:J

.field public final disabledThumbColor:J

.field public final inactiveTrackColor:J

.field public final inactiveTrackSecondaryColor:J

.field public final thumbColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->thumbColor:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->activeTrackColor:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->activeTrackSecondaryColor:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->inactiveTrackColor:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledThumbColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledActiveTrackColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledActiveTrackSecondaryColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledInactiveTrackColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;-><init>(JJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final trackColor-WaAFU9c$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZZ)J
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-wide p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->activeTrackColor:J

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->inactiveTrackColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-wide p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledActiveTrackColor:J

    goto :goto_0

    :cond_2
    iget-wide p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledInactiveTrackColor:J

    :goto_0
    return-wide p0
.end method
