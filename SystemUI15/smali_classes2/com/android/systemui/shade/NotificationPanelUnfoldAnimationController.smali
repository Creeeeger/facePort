.class public final Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final filterShade:Lkotlin/jvm/functions/Function0;

.field public final translateAnimator$delegate:Lkotlin/Lazy;

.field public final translateAnimatorStatusBar$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$filterShade$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$filterShade$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->filterShade:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimator$2;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimator$2;-><init>(Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->translateAnimator$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController$translateAnimatorStatusBar$2;-><init>(Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->translateAnimatorStatusBar$delegate:Lkotlin/Lazy;

    return-void
.end method
