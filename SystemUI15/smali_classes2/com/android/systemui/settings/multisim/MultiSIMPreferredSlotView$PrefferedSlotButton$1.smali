.class public final Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
