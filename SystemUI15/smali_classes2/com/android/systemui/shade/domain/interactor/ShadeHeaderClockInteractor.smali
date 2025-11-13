.class public final Lcom/android/systemui/shade/domain/interactor/ShadeHeaderClockInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final repository:Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/data/repository/ShadeHeaderClockRepository;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/ShadeHeaderClockInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method
