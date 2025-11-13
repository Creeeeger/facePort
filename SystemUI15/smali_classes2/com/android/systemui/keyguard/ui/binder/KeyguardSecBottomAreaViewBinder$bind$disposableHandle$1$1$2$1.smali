.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $endButton:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$endButton:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    sget-object p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isActivated:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$endButton:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    iget-boolean p2, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isClickable:Z

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
