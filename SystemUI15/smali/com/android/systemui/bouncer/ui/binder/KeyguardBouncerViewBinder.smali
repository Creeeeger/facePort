.class public final Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Landroid/view/ViewGroup;Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 13

    move-object v11, p0

    move-object/from16 v0, p3

    invoke-interface {v0, p0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;->create(Landroid/view/ViewGroup;)Lcom/android/keyguard/dagger/KeyguardBouncerComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent;->getSecurityContainerController()Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->init()V

    new-instance v2, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-object/from16 v9, p7

    invoke-direct {v2, v4, v9}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v12, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, p1

    move-object v3, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v12}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
