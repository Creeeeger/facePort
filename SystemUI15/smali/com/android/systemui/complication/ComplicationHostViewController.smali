.class public final Lcom/android/systemui/complication/ComplicationHostViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mComplicationCollectionViewModel:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

.field public final mComplications:Ljava/util/HashMap;

.field mIsAnimationEnabled:Z

.field public final mLayoutEngine:Lcom/android/systemui/complication/ComplicationLayoutEngine;

.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ComplicationHostVwCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/complication/ComplicationHostViewController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/complication/ComplicationLayoutEngine;Lcom/android/systemui/dreams/DreamOverlayStateController;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationCollectionViewModel;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/complication/ComplicationLayoutEngine;

    iput-object p4, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p5, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mComplicationCollectionViewModel:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    const/4 p1, -0x2

    const-string p2, "animator_duration_scale"

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-interface {p6, p2, p3, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getFloatForUser(Ljava/lang/String;FI)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mIsAnimationEnabled:Z

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final getViewsAtPosition(I)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/complication/ComplicationLayoutEngine;

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mComplicationCollectionViewModel:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mComplications:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/complication/ComplicationHostViewController;)V

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationHostViewController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    return-void
.end method
