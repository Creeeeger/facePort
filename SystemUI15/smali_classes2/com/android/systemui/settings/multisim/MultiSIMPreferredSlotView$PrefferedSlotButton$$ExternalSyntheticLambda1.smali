.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1015"

    const-string v0, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
