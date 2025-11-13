.class public final Lcom/android/systemui/dreams/touch/CommunalTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/TouchHandler;


# instance fields
.field public final mCentralSurfaces:Ljava/util/Optional;

.field public final mInitiationWidth:I

.field final mIsCommunalAvailableCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mIsEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/util/Optional;ILcom/android/systemui/communal/domain/interactor/CommunalInteractor;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;I",
            "Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;",
            "Landroidx/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mIsEnabled:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/CommunalTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mIsCommunalAvailableCallback:Ljava/util/function/Consumer;

    iput p2, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mInitiationWidth:I

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    iget-object p0, p3, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {p4, p0, v0}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getTouchInitiationRegion(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mInitiationWidth:I

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p0, p0, p0}, Landroid/graphics/Rect;->inset(IIII)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public final isEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mIsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onSessionStart(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mIsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/touch/CommunalTouchHandler;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
