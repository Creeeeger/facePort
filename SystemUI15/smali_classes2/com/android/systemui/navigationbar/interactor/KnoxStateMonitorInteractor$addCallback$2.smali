.class public final Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $navBarHiddenCallback:Ljava/util/function/Consumer;

.field public final synthetic $setHardKeyStateCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$navBarHiddenCallback:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$setHardKeyStateCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetHardKeyIntentState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$setHardKeyStateCallback:Ljava/util/function/Consumer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final onUpdateNavigationBarHidden()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$addCallback$2;->$navBarHiddenCallback:Ljava/util/function/Consumer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
