.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_0
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_1
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_2
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_3
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_4
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_5
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f130e6e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    :cond_6
    iget-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    if-eqz v3, :cond_7

    goto/16 :goto_15

    :cond_7
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    iget-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v5, v3, :cond_8

    iget-boolean v6, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    if-eqz v6, :cond_8

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f130e70

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    :cond_8
    if-ne v5, v3, :cond_9

    iget-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-nez v3, :cond_2e

    :cond_9
    iget-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    if-nez v3, :cond_2e

    iget-boolean v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    if-nez v3, :cond_2e

    iget-boolean v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    if-eqz v2, :cond_a

    goto/16 :goto_15

    :cond_a
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-nez v2, :cond_b

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    goto/16 :goto_15

    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    goto/16 :goto_15

    :cond_c
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isBlockedAllMultiSimBar()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_15

    :cond_d
    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-nez v2, :cond_e

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    :cond_e
    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const-string v6, "QUICK_PANEL_LAYOUT"

    const-string v7, "isChanged"

    const-string v8, "QPPE1016"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-eq v3, v12, :cond_1a

    if-eq v3, v10, :cond_15

    if-eq v3, v9, :cond_f

    goto/16 :goto_d

    :cond_f
    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataBlocked(I)Z

    move-result v3

    iget-object v9, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v9, v9, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v9, v12}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataBlocked(I)Z

    move-result v9

    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v3, v0, v15}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;ZLcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;I)V

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v14, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;

    const/4 v15, 0x1

    invoke-direct {v14, v1, v9, v0, v15}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;ZLcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;I)V

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v13, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-nez v13, :cond_10

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_10
    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    if-nez v0, :cond_11

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_11
    if-ne v0, v12, :cond_12

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    :goto_0
    if-eqz v3, :cond_13

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_13
    if-eqz v9, :cond_14

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_14
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mobile data"

    invoke-static {v0, v8, v7, v3, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_15
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v9, 0x5

    invoke-direct {v3, v1, v9}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v9, 0x6

    invoke-direct {v3, v1, v9}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-ne v0, v12, :cond_16

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    goto :goto_1

    :cond_16
    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    :goto_1
    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-ne v0, v12, :cond_17

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    goto :goto_2

    :cond_17
    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    :goto_2
    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-nez v3, :cond_18

    move v3, v4

    goto :goto_3

    :cond_18
    move v3, v11

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-ne v3, v12, :cond_19

    move v3, v4

    goto :goto_4

    :cond_19
    move v3, v11

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "text messages"

    invoke-static {v0, v8, v7, v3, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_1a
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v13, 0x1

    invoke-direct {v3, v1, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v13, 0x2

    invoke-direct {v3, v1, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v13, 0x3

    invoke-direct {v3, v1, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v13, 0x4

    invoke-direct {v3, v1, v13}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-nez v3, :cond_1b

    iget v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    goto :goto_5

    :cond_1b
    iget v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v0, v12, :cond_1c

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    goto :goto_6

    :cond_1c
    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    :goto_6
    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v0, v10, :cond_1d

    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    goto :goto_7

    :cond_1d
    iget v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    :goto_7
    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->setSlotListMenuColor(II)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v3, v9, :cond_1e

    iget v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    goto :goto_8

    :cond_1e
    iget v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-nez v3, :cond_1f

    move v3, v4

    goto :goto_9

    :cond_1f
    move v3, v11

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v3, v12, :cond_20

    move v3, v4

    goto :goto_a

    :cond_20
    move v3, v11

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v3, v10, :cond_21

    move v3, v4

    goto :goto_b

    :cond_21
    move v3, v11

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v3, v9, :cond_22

    move v3, v4

    goto :goto_c

    :cond_22
    move v3, v11

    :goto_c
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "calls"

    invoke-static {v0, v8, v7, v3, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070e0d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070e20

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070e0e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070e0c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070e1d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget-object v9, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const v13, 0x7f080e34

    if-ne v5, v9, :cond_23

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v0, v6, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v14, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    :cond_23
    iget-object v14, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v14, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v14, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    invoke-virtual {v14, v6, v3, v6, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v14, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080e35

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_e
    if-ne v5, v9, :cond_26

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v9}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v9

    if-eqz v9, :cond_24

    invoke-virtual {v9}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_25

    goto :goto_f

    :cond_25
    const-string v3, "MultiSIMController"

    const-string v5, "Support Call preferred Others"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v0, v6, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    :cond_26
    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v0, v6, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080e33

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_10
    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-array v3, v10, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v8, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v9, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupWindowTopMargin:I

    aget v11, v3, v12

    sub-int/2addr v8, v11

    sub-int/2addr v8, v10

    if-ge v8, v7, :cond_27

    move v8, v12

    goto :goto_11

    :cond_27
    move v8, v4

    :goto_11
    aget v3, v3, v4

    sub-int/2addr v9, v3

    if-ge v9, v0, :cond_28

    add-int/2addr v3, v6

    sub-int/2addr v3, v0

    :cond_28
    if-eqz v8, :cond_29

    sub-int v10, v5, v7

    :cond_29
    add-int/2addr v11, v10

    filled-new-array {v3, v11}, [I

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2a

    const/16 v3, 0x31

    goto :goto_12

    :cond_2a
    const v3, 0x800033

    :goto_12
    aget v5, v0, v4

    aget v6, v0, v12

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updatePhoneNumberWhenNeeded()V

    iget-object v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e0f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06068c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-eqz v5, :cond_2b

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v0, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    goto :goto_14

    :cond_2b
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    aget v2, v0, v4

    aget v0, v0, v12

    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    iget-object v4, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v2, v18

    add-int v6, v0, v19

    invoke-direct {v4, v2, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v13

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v15, 0x7f4

    const/16 v16, 0x1

    move-object/from16 v17, v4

    invoke-virtual/range {v13 .. v22}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v3

    :goto_13
    if-nez v0, :cond_2c

    move-object v0, v3

    :cond_2c
    if-eqz v0, :cond_2d

    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v2, v12}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    goto :goto_14

    :cond_2d
    move-object v0, v3

    :goto_14
    if-eqz v0, :cond_2e

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_2e
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
