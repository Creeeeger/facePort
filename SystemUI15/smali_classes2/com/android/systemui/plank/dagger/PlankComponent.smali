.class public final Lcom/android/systemui/plank/dagger/PlankComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final featureEnabled:Z

.field public final lazyProtocolManager:Ldagger/Lazy;


# direct methods
.method public constructor <init>(ZLdagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->featureEnabled:Z

    iput-object p2, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    return-void
.end method
