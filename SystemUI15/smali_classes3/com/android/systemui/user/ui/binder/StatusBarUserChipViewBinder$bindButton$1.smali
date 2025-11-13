.class public final Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bindButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

.field public final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bindButton$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bindButton$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bindButton$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    iget-object p1, p1, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bindButton$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
