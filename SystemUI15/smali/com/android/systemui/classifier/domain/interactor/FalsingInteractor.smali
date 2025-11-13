.class public final Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final collector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final manager:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;->collector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p2, p0, Lcom/android/systemui/classifier/domain/interactor/FalsingInteractor;->manager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method
