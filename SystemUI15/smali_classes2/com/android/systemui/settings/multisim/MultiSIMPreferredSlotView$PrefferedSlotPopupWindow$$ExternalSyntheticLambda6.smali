.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;ZLcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-nez v2, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    if-eq v3, v4, :cond_2

    iput-boolean v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    iget-object p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    :cond_3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;->f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    if-nez v3, :cond_4

    iget-boolean v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-nez v2, :cond_7

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    iget-object p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    :cond_7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
