.class public final Lcom/android/systemui/security/data/model/SecurityModel$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/security/data/model/SecurityModel$Companion;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/systemui/statusbar/policy/SecurityController;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/security/data/model/SecurityModel$Companion$create$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/security/data/model/SecurityModel$Companion$create$2;-><init>(Lcom/android/systemui/statusbar/policy/SecurityController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/policy/SecurityController;)Lcom/android/systemui/security/data/model/SecurityModel;
    .locals 19

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v18, Lcom/android/systemui/security/data/model/SecurityModel;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile$1()Z

    move-result v5

    iget v3, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId$1(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v6, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v7

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_3

    :cond_2
    move-object v8, v2

    :goto_3
    iget v3, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId$1(I)I

    move-result v3

    const/16 v9, -0x2710

    if-ne v3, v9, :cond_3

    move-object v3, v2

    goto :goto_4

    :cond_3
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_5

    :cond_4
    move-object v9, v2

    :goto_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v10

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    move-result v11

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    move-result v14

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    move-result v15

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    move-result v16

    if-nez v1, :cond_5

    :goto_6
    move-object/from16 v17, v2

    goto :goto_7

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_6

    :goto_7
    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/security/data/model/SecurityModel;-><init>(ZZZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZZLandroid/graphics/drawable/Drawable;)V

    return-object v18
.end method
