.class public final Lcom/android/keyguard/KeyguardUnfoldTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final filterKeyguard:Lkotlin/jvm/functions/Function0;

.field public final filterKeyguardAndSplitShadeOnly:Lkotlin/jvm/functions/Function0;

.field public final keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

.field public final shadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field public final shortcutButtonsAnimator$delegate:Lkotlin/Lazy;

.field public statusViewCentered:Z

.field public final translateAnimator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->shadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterKeyguardAndSplitShadeOnly$1;

    invoke-direct {p1, p4, p0}, Lcom/android/keyguard/KeyguardUnfoldTransition$filterKeyguardAndSplitShadeOnly$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUnfoldTransition;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguardAndSplitShadeOnly:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$filterKeyguard$1;

    invoke-direct {p1, p4}, Lcom/android/keyguard/KeyguardUnfoldTransition$filterKeyguard$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->filterKeyguard:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;

    invoke-direct {p1, p0, p5}, Lcom/android/keyguard/KeyguardUnfoldTransition$translateAnimator$2;-><init>(Lcom/android/keyguard/KeyguardUnfoldTransition;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateAnimator$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;

    invoke-direct {p1, p0, p5}, Lcom/android/keyguard/KeyguardUnfoldTransition$shortcutButtonsAnimator$2;-><init>(Lcom/android/keyguard/KeyguardUnfoldTransition;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUnfoldTransition;->shortcutButtonsAnimator$delegate:Lkotlin/Lazy;

    return-void
.end method
