.class public final Lcom/android/systemui/navigationbar/util/MarqueeLogic;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public horizontalMoved:I

.field public horizontalShift:I

.field public scaleFactor:F

.field public verticalMoved:I

.field public verticalShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/util/MarqueeLogic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    iput v0, p0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    return-void
.end method
