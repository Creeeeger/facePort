.class public final Lcom/android/systemui/ambient/touch/ShadeTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/TouchHandler;


# instance fields
.field public mCapture:Ljava/lang/Boolean;

.field public final mInitiationHeight:I

.field public final mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final mSurfaces:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Lcom/android/systemui/shade/ShadeViewController;Landroid/app/DreamManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Landroid/app/DreamManager;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mSurfaces:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    iput p4, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mInitiationHeight:I

    return-void
.end method


# virtual methods
.method public final getTouchInitiationRegion(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mInitiationHeight:I

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-virtual {p3, p0, p0, p0, p1}, Landroid/graphics/Rect;->inset(IIII)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public final onSessionStart(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mSurfaces:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->pop()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/ShadeTouchHandler;)V

    iget-object v1, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ambient/touch/ShadeTouchHandler;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    iget-object v1, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mEventListeners:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$1;-><init>(Lcom/android/systemui/ambient/touch/ShadeTouchHandler;)V

    iget-object p0, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mGestureListeners:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
