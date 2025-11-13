.class final Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $security:Lcom/android/systemui/security/data/model/SecurityModel;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/security/data/model/SecurityModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;",
            "Lcom/android/systemui/security/data/model/SecurityModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;

    iget-object v0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;-><init>(Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;Lcom/android/systemui/security/data/model/SecurityModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->label:I

    if-nez v2, :cond_23

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->this$0:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    iget-object v2, v2, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->qsSecurityFooterUtils:Lcom/android/systemui/qs/QSSecurityFooterUtils;

    iget-object v0, v0, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$securityButtonConfig$1$1;->$security:Lcom/android/systemui/security/data/model/SecurityModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isDeviceManaged:Z

    iget-object v4, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget-boolean v5, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasWorkProfile:Z

    iget-boolean v7, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInWorkProfile:Z

    iget-boolean v8, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isNetworkLoggingEnabled:Z

    iget-object v9, v0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileVpnName:Ljava/lang/String;

    if-nez v7, :cond_2

    if-nez v9, :cond_2

    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v10, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    iget-boolean v12, v0, Lcom/android/systemui/security/data/model/SecurityModel;->hasCACertInCurrentUser:Z

    iget-object v13, v0, Lcom/android/systemui/security/data/model/SecurityModel;->primaryVpnName:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isProfileOwnerOfOrganizationOwnedDevice:Z

    iget-boolean v15, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isParentalControlsEnabled:Z

    iget-boolean v6, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isWorkProfileOn:Z

    if-eqz v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    if-nez v14, :cond_4

    if-nez v15, :cond_4

    if-eqz v10, :cond_22

    if-eqz v6, :cond_22

    :cond_4
    if-eqz v14, :cond_6

    if-eqz v10, :cond_5

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v15, :cond_7

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f130eeb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_7
    if-nez v3, :cond_13

    iget-object v1, v0, Lcom/android/systemui/security/data/model/SecurityModel;->workProfileOrganizationName:Ljava/lang/String;

    if-nez v12, :cond_10

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    goto/16 :goto_6

    :cond_8
    if-nez v13, :cond_b

    if-eqz v9, :cond_9

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    if-eqz v6, :cond_a

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v5, "SystemUi.QS_MSG_WORK_PROFILE_NETWORK"

    invoke-virtual {v1, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_a
    if-eqz v14, :cond_f

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_b
    :goto_5
    if-eqz v13, :cond_c

    if-eqz v9, :cond_c

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f130eed

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_c
    if-eqz v9, :cond_d

    if-eqz v6, :cond_d

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v3, v2, v9, v5}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v6, v3, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_d
    if-eqz v13, :cond_f

    if-eqz v5, :cond_e

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v3, v2, v13, v5}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v6, v3, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_e
    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f130eea

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_f
    move-object v1, v11

    goto/16 :goto_a

    :cond_10
    :goto_6
    if-eqz v7, :cond_12

    if-eqz v6, :cond_12

    if-nez v1, :cond_11

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v5, "SystemUi.QS_MSG_WORK_PROFILE_MONITORING"

    invoke-virtual {v1, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_11
    iget-object v3, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v1, v6}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING"

    invoke-virtual {v3, v6, v5, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_12
    if-eqz v12, :cond_f

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f130ee4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_13
    iget-object v3, v0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceOwnerOrganizationName:Ljava/lang/String;

    if-nez v12, :cond_1b

    if-nez v7, :cond_1b

    if-eqz v8, :cond_14

    goto/16 :goto_9

    :cond_14
    if-nez v13, :cond_16

    if-eqz v9, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_16
    :goto_7
    if-eqz v13, :cond_18

    if-eqz v9, :cond_18

    if-nez v3, :cond_17

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v5, "SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS"

    invoke-virtual {v1, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_17
    iget-object v5, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v3, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS"

    invoke-virtual {v5, v3, v6, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_18
    if-eqz v13, :cond_19

    move-object v5, v13

    goto :goto_8

    :cond_19
    move-object v5, v9

    :goto_8
    if-nez v3, :cond_1a

    iget-object v3, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v5, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_1a
    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2, v3, v5}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;Ljava/lang/String;)V

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v1, v5, v6, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_1b
    :goto_9
    if-nez v3, :cond_1c

    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    const-string v5, "SystemUi.QS_MSG_MANAGEMENT_MONITORING"

    invoke-virtual {v1, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_1c
    iget-object v1, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING"

    invoke-virtual {v1, v6, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v15, :cond_1d

    iget-object v3, v0, Lcom/android/systemui/security/data/model/SecurityModel;->deviceAdminIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1d

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    invoke-direct {v0, v3, v11}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_c

    :cond_1d
    if-nez v13, :cond_1f

    if-eqz v9, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v3, 0x7f08096a

    invoke-direct {v0, v3, v11}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_c

    :cond_1f
    :goto_b
    iget-boolean v0, v0, Lcom/android/systemui/security/data/model/SecurityModel;->isVpnBranded:Z

    if-eqz v0, :cond_20

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v3, 0x7f0812a5

    invoke-direct {v0, v3, v11}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_c

    :cond_20
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v3, 0x7f08139b

    invoke-direct {v0, v3, v11}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_c
    iget-object v2, v2, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isSecureWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v2, 0x7f081360

    invoke-direct {v0, v2, v11}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :cond_21
    new-instance v11, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;

    invoke-direct {v11, v0, v1, v4}, Lcom/android/systemui/qs/footer/domain/model/SecurityButtonConfig;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/String;Z)V

    :cond_22
    return-object v11

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
