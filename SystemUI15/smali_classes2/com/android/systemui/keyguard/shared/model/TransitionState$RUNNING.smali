.class final Lcom/android/systemui/keyguard/shared/model/TransitionState$RUNNING;
.super Lcom/android/systemui/keyguard/shared/model/TransitionState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/shared/model/TransitionState;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final isTransitioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
