.class public final Lcom/android/systemui/qs/QSSecurityFooterUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Landroid/os/Looper;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p8, 0x0

    invoke-direct {p4, p8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0xe

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x1

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x2

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x3

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x4

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x5

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x6

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/4 p8, 0x7

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0x8

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0x9

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0xa

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0xb

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0xc

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    new-instance p4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const/16 p8, 0xd

    invoke-direct {p4, p0, p8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public createDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d031e

    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

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

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

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
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile$1()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v3}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d031d

    invoke-virtual {v11, v12, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0376

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_4

    move-object v5, v3

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->isFinancedDevice()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v13, 0x7f130c68

    filled-new-array {v5, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v13, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    const/4 v14, 0x4

    invoke-direct {v13, v0, v5, v14}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v14, "SystemUi.QS_DIALOG_NAMED_MANAGEMENT"

    invoke-virtual {v12, v14, v13, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

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

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    move-object v6, v3

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_9

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v13, "SystemUi.QS_DIALOG_MANAGEMENT_CA_CERT"

    invoke-virtual {v6, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_a

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v13, "SystemUi.QS_DIALOG_WORK_PROFILE_CA_CERT"

    invoke-virtual {v6, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_a
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

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

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v15

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

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

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_NETWORK"

    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_d
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

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

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v13

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

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

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    const/4 v13, 0x1

    invoke-direct {v4, v0, v9, v10, v13}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;Ljava/lang/String;I)V

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
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    const/4 v8, 0x1

    invoke-direct {v4, v0, v9, v8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

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

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    const/4 v13, 0x2

    invoke-direct {v4, v0, v9, v10, v13}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;Ljava/lang/String;I)V

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_13
    if-eqz v10, :cond_14

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    const/4 v8, 0x2

    invoke-direct {v4, v0, v10, v8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SystemUi.QS_DIALOG_WORK_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_14
    if-eqz v4, :cond_15

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    const/4 v8, 0x3

    invoke-direct {v4, v0, v9, v8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SystemUi.QS_DIALOG_PERSONAL_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_15
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v4, 0x7f130c62

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_9
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v4, 0x7f130c67

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v4, 0x7f130c66

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;)V

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

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v8

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

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

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method public getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->isFinancedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f130c6d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v0, "SystemUi.QS_DIALOG_MANAGEMENT_TITLE"

    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v0, "SystemUi.QS_MSG_MANAGEMENT"

    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->isFinancedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f130ef8

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SystemUi.QS_MSG_NAMED_MANAGEMENT"

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v1, "SystemUi.QS_DIALOG_VIEW_POLICIES"

    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isFinancedDevice()Z
    .locals 3

    const-string v0, "device_policy_manager"

    const-string v1, "add-isfinanced-device"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isFinancedDevice()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
