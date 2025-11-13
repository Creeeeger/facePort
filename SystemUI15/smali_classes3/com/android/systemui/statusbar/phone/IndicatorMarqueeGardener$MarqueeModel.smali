.class public final Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public direction:I

.field public horizontalShift:I

.field public final maxShift:I

.field public shiftBottom:I

.field public shiftLeft:I

.field public shiftRight:I

.field public shiftTop:I

.field public verticalShift:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->maxShift:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->direction:I

    return-void
.end method
