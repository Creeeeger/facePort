.class public final Lcom/android/systemui/animation/TextInterpolator$Run;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final baseX:[F

.field public final baseY:[F

.field public final fontRuns:Ljava/util/List;

.field public final glyphIds:[I

.field public final targetX:[F

.field public final targetY:[F


# direct methods
.method public constructor <init>([I[F[F[F[FLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[F[F[F[F",
            "Ljava/util/List<",
            "Lcom/android/systemui/animation/TextInterpolator$FontRun;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    iput-object p3, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    iput-object p4, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    iput-object p5, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    iput-object p6, p0, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    return-void
.end method
