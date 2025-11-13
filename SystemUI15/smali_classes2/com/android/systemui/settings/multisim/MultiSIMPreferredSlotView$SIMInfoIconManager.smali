.class public final Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;
.super Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBlocked:Z

.field public mSlot:Ljava/lang/String;

.field public final mSlotId:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V

    iput p8, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mSlotId:I

    return-void
.end method


# virtual methods
.method public final onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mBlocked:Z

    if-eqz v0, :cond_1

    const-string v0, "mobile"

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mobile2"

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x105056a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mSlotId:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "ims_volte"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mobile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move p3, v1

    goto :goto_1

    :cond_0
    const-string v0, "ims_volte2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mobile2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mBlocked:Z

    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mSlot:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setVisible(Z)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setVisible(Z)V

    return-void
.end method

.method public final onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;->mSlotId:I

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims_volte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims_volte2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :cond_2
    return-void
.end method
