.class public final Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mAppearance:I

.field public final mCallback:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mDisplayId:I

.field public final mNotifDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

.field public final mObserver:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/WindowManager;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mObserver:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;-><init>(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mCallback:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mNotifDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public areLightsOut()Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mAppearance:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingDot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onInit()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    sget p0, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mDisplayId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mNotifDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mObserver:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mCallback:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->updateLightsOutView()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mNotifDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mObserver:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->asyncObservers:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mCallback:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public shouldShowDot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mNotifDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->areLightsOut()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateLightsOutView()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->shouldShowDot()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->isShowingDot()Z

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x2ee

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xfa

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method
