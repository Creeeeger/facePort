.class public final Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final context:Landroid/content/Context;

.field public currentHintId:I

.field public gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

.field public final handler:Landroid/os/Handler;

.field public final hintList:Ljava/util/List;

.field public holdingViAnimator:Landroid/animation/AnimatorSet;

.field public homeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

.field public isCanMove:Z

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public navigationMode:I

.field public final navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->context:Landroid/content/Context;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->handler:Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->hintList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final dipToPixel(F)F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public final getHintView(I)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    sget-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->homeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    :cond_1
    return-object v2

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    :cond_3
    return-object v2
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    return-void
.end method
