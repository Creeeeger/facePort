.class public final Lcom/android/systemui/qs/QSSecurityFooter;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field public final mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mFooterText:Landroid/widget/TextView;

.field public mFooterTextContent:Ljava/lang/CharSequence;

.field public final mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field public mIsVisible:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mPrimaryFooterIcon:Landroid/widget/ImageView;

.field public mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mPrimaryFooterIconId:I

.field public final mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

.field public final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

.field public final mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

.field public final mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

.field public final mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;


# direct methods
.method public static -$$Nest$mhandleRefreshState(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile$1()Z

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v11, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v12, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v12, v12, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget v14, v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId$1(I)I

    move-result v14

    const/16 v15, -0x2710

    if-ne v14, v15, :cond_1

    move-object v13, v9

    goto :goto_1

    :cond_1
    iget-object v13, v13, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v13

    :goto_1
    iget-object v14, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v14, v14, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v15, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    move-result v15

    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget v3, v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId$1(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v7, :cond_4

    if-nez v11, :cond_4

    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v9, 0x1

    :goto_4
    iget-boolean v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    if-eqz v1, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    if-nez v6, :cond_7

    if-nez v10, :cond_7

    if-nez v14, :cond_7

    if-nez v15, :cond_7

    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v16, v12

    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    move-object/from16 v16, v12

    const/4 v12, 0x1

    :goto_6
    if-eq v4, v12, :cond_9

    move-object/from16 v17, v13

    const-string/jumbo v13, "updateVisibility: isVisible: "

    move/from16 v18, v8

    const-string v8, " -> "

    move/from16 v19, v5

    const-string v5, " [(isDeviceManaged("

    invoke-static {v13, v8, v5, v4, v12}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") && !isDemoDevice("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    const-string v5, ")) || hasCACerts("

    const-string v8, ") || vpnName!=null("

    invoke-static {v4, v2, v5, v6, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v10, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    const-string v2, ") || isProfileOwnerOfOrganizationOwnedDevice("

    const-string v8, ") || isParentalControlsEnabled("

    invoke-static {v4, v5, v2, v14, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, ") || (hasDisclosableWorkProfilePolicy("

    const-string v5, ") && isWorkProfileOn("

    invoke-static {v4, v15, v2, v9, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "))]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QSSecurityFooter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    move/from16 v19, v5

    move/from16 v18, v8

    move-object/from16 v17, v13

    :goto_8
    iput-boolean v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    if-eqz v12, :cond_a

    if-eqz v14, :cond_a

    if-eqz v9, :cond_b

    if-nez v3, :cond_a

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :goto_a
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    if-eqz v15, :cond_c

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f130eeb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_c
    if-nez v1, :cond_18

    if-nez v6, :cond_d

    if-eqz v7, :cond_e

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v9, v17

    goto/16 :goto_d

    :cond_e
    if-nez v10, :cond_11

    if-eqz v11, :cond_f

    if-eqz v3, :cond_f

    goto :goto_c

    :cond_f
    if-eqz v19, :cond_10

    if-eqz v18, :cond_10

    if-eqz v3, :cond_10

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v3, "SystemUi.QS_MSG_WORK_PROFILE_NETWORK"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_10
    if-eqz v14, :cond_15

    move-object/from16 v9, v17

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_11
    :goto_c
    if-eqz v10, :cond_12

    if-eqz v11, :cond_12

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f130eed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_12
    if-eqz v11, :cond_13

    if-eqz v3, :cond_13

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v11, v3}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_13
    if-eqz v10, :cond_15

    if-eqz v19, :cond_14

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v10, v3}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_14
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f130eea

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_11

    :goto_d
    if-eqz v7, :cond_17

    if-eqz v3, :cond_17

    if-nez v9, :cond_16

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v3, "SystemUi.QS_MSG_WORK_PROFILE_MONITORING"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_16
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v9, v3}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_17
    if-eqz v6, :cond_15

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f130ee4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_18
    if-nez v6, :cond_19

    if-nez v7, :cond_19

    if-eqz v18, :cond_1a

    :cond_19
    move-object/from16 v1, v16

    goto/16 :goto_10

    :cond_1a
    if-nez v10, :cond_1b

    if-eqz v11, :cond_1c

    :cond_1b
    move-object/from16 v1, v16

    goto :goto_e

    :cond_1c
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :goto_e
    if-eqz v10, :cond_1e

    if-eqz v11, :cond_1e

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v3, "SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_1d
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS"

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1e
    if-eqz v10, :cond_1f

    move-object v2, v10

    goto :goto_f

    :cond_1f
    move-object v2, v11

    :goto_f
    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v2, v4}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v1, v4, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_20
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v3, v2, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :goto_10
    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v3, "SystemUi.QS_MSG_MANAGEMENT_MONITORING"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_21
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING"

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    if-nez v10, :cond_23

    if-eqz v11, :cond_22

    goto :goto_12

    :cond_22
    const v1, 0x7f080fa5

    goto :goto_13

    :cond_23
    :goto_12
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    move-result v1

    if-eqz v1, :cond_24

    const v1, 0x7f0812a5

    goto :goto_13

    :cond_24
    const v1, 0x7f08139b

    :goto_13
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isSecureWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    const v1, 0x7f081360

    :cond_25
    iget v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    if-eq v2, v1, :cond_26

    iput v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    :cond_26
    if-eqz v15, :cond_28

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_29

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-nez v1, :cond_27

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    goto :goto_14

    :cond_27
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_14
    iput-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    :cond_28
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_29
    :goto_15
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0xb

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0xd

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0xe

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const/16 v2, 0xa

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v2, 0x7f0a046a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v2, 0x7f0a0919

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    const v0, 0x7f080fa5

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance p1, Lcom/android/systemui/qs/QSSecurityFooter$H;

    invoke-direct {p1, p0, p6, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p7, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public createDialogView()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d03bf

    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    const v5, 0x7f0a08c2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v4, 0x7f0a08c3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile$1()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v3}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d03be

    invoke-virtual {v11, v12, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0376

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_4

    move-object v5, v3

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v13, 0x7f130c68

    filled-new-array {v5, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v13, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v5, v14}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v14, "SystemUi.QS_DIALOG_NAMED_MANAGEMENT"

    invoke-virtual {v12, v14, v13, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v13, "SystemUi.QS_DIALOG_MANAGEMENT"

    invoke-virtual {v5, v13, v12}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v12, 0x1

    const v13, 0x7f0a0375

    const/16 v14, 0x8

    if-nez v5, :cond_7

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    const v13, 0x7f0a0377

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    move-object v6, v3

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_9

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v13, "SystemUi.QS_DIALOG_MANAGEMENT_CA_CERT"

    invoke-virtual {v6, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_a

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v13, "SystemUi.QS_DIALOG_WORK_PROFILE_CA_CERT"

    invoke-virtual {v6, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_a
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v7, 0x7f130c59

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    const v7, 0x7f0a0239

    const v13, 0x7f0a0238

    if-nez v6, :cond_b

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    const v13, 0x7f0a023a

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v15}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v15

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v7, "SystemUi.QS_DIALOG_MONITORING_CA_CERT_SUBTITLE"

    invoke-virtual {v15, v7, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-nez v8, :cond_c

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_d

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_NETWORK"

    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_d
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v8, "SystemUi.QS_DIALOG_WORK_PROFILE_NETWORK"

    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    const v7, 0x7f0a07cd

    const v8, 0x7f0a07cc

    if-nez v3, :cond_e

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_e
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0a07ce

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v13

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v7, "SystemUi.QS_DIALOG_MONITORING_NETWORK_SUBTITLE"

    invoke-virtual {v13, v7, v15}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    if-nez v9, :cond_f

    if-nez v10, :cond_f

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_f
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_TWO_NAMED_VPN"

    if-eqz v1, :cond_12

    if-eqz v9, :cond_10

    if-eqz v10, :cond_10

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;

    const/4 v13, 0x0

    invoke-direct {v4, v0, v9, v10, v13}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Ljava/lang/String;I)V

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_9

    :cond_10
    if-eqz v9, :cond_11

    goto :goto_8

    :cond_11
    move-object v9, v10

    :goto_8
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const/4 v8, 0x0

    invoke-direct {v4, v0, v9, v8}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SystemUi.QS_DIALOG_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_12
    if-eqz v9, :cond_13

    if-eqz v10, :cond_13

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;

    const/4 v13, 0x1

    invoke-direct {v4, v0, v9, v10, v13}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Ljava/lang/String;I)V

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_13
    if-eqz v10, :cond_14

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const/4 v8, 0x1

    invoke-direct {v4, v0, v10, v8}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SystemUi.QS_DIALOG_WORK_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_14
    if-eqz v4, :cond_15

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const/4 v8, 0x2

    invoke-direct {v4, v0, v9, v8}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;I)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SystemUi.QS_DIALOG_PERSONAL_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_15
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f130c62

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_9
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f130c67

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f130c66

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v7, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :goto_a
    const v1, 0x7f0a0e9c

    const v4, 0x7f0a0e9b

    if-nez v7, :cond_16

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_16
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0e9d

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v8

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v9, "SystemUi.QS_DIALOG_MONITORING_VPN_SUBTITLE"

    invoke-virtual {v8, v9, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    if-eqz v5, :cond_17

    move v0, v12

    goto :goto_c

    :cond_17
    move v0, v2

    :goto_c
    if-eqz v6, :cond_18

    move v4, v12

    goto :goto_d

    :cond_18
    move v4, v2

    :goto_d
    if-eqz v3, :cond_19

    move v3, v12

    goto :goto_e

    :cond_19
    move v3, v2

    :goto_e
    if-eqz v7, :cond_1a

    move v2, v12

    :cond_1a
    if-eqz v0, :cond_1b

    goto :goto_10

    :cond_1b
    if-eqz v3, :cond_1c

    add-int/lit8 v0, v4, 0x1

    goto :goto_f

    :cond_1c
    move v0, v4

    :goto_f
    if-eqz v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    if-eq v0, v12, :cond_1e

    goto :goto_10

    :cond_1e
    if-eqz v4, :cond_1f

    const v0, 0x7f0a0239

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    if-eqz v3, :cond_20

    const v0, 0x7f0a07cd

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    if-eqz v2, :cond_21

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    :goto_10
    return-object v11
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method public getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v0, 0x7f130c6d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v0, "SystemUi.QS_DIALOG_MANAGEMENT_TITLE"

    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v0, "SystemUi.QS_MSG_MANAGEMENT"

    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v0, 0x7f130ef8

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SystemUi.QS_MSG_NAMED_MANAGEMENT"

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    const-string v1, "SystemUi.QS_DIALOG_VIEW_POLICIES"

    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final isFinancedDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->updateTextMaxWidth()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateTextMaxWidth()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v1

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f071086

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
