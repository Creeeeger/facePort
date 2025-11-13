.class public final Lcom/android/systemui/brightness/domain/interactor/BrightnessPolicyEnforcementInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final brightnessPolicyRestriction:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepository;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/brightness/domain/interactor/BrightnessPolicyEnforcementInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    check-cast p1, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->restrictionPolicy:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/brightness/domain/interactor/BrightnessPolicyEnforcementInteractor;->brightnessPolicyRestriction:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
