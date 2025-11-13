.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $addButton:Landroid/view/View;

.field public final synthetic $popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/UserSwitcherPopupMenu;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;",
            "Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$view:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$addButton:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    iput-object p5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-eqz p1, :cond_2

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$view:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;

    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$addButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p1, :cond_4

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-ne p0, p2, :cond_4

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_3
    const/4 p0, 0x0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
