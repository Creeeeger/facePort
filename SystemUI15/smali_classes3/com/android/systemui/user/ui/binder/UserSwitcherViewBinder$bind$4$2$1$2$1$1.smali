.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$view:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$addButton:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    iput-object p5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;->INSTANCE:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;

    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$addButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    new-instance v5, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1$1;

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-direct {v5, p0}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    invoke-direct {p0, v2}, Lcom/android/systemui/user/UserSwitcherPopupMenu;-><init>(Landroid/content/Context;)V

    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/user/UserSwitcherPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$createAndShowPopupMenu$1$1;

    invoke-direct {v1, v5}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$createAndShowPopupMenu$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/user/UserSwitcherPopupMenu;->show()V

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
