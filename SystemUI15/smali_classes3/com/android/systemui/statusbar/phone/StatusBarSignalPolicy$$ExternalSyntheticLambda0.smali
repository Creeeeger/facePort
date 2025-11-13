.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget v6, v1, v4

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnBranded()Z

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v6, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnConfig;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getVpnValidationStatus(Lcom/android/internal/net/VpnConfig;)Z

    move-result v4

    goto :goto_4

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v6, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v6, v4

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_5

    aget v8, v4, v7

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/net/VpnConfig;

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getVpnValidationStatus(Lcom/android/internal/net/VpnConfig;)Z

    move-result v8

    if-nez v8, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_4
    if-eqz v2, :cond_7

    if-eqz v4, :cond_6

    const v2, 0x7f0812a5

    goto :goto_5

    :cond_6
    const v2, 0x7f08134e

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    const v2, 0x7f08139b

    goto :goto_5

    :cond_8
    const v2, 0x7f08134f

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isSecureWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    const v2, 0x7f081360

    :cond_9
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnConfig;

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    iget-boolean v6, v6, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_a

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isSecureWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android"

    const-string v6, "com.samsung.android.fast"

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d

    :try_start_0
    invoke-virtual {v0, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x21

    if-lt v4, v7, :cond_e

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_d

    goto :goto_7

    :catch_0
    :cond_d
    move v5, v3

    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f13014b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v5, :cond_f

    if-eqz v6, :cond_10

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_8

    :cond_f
    if-nez v6, :cond_10

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_8
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->isIconControlledByFlags(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring removal of ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "). It should be controlled elsewhere"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "StatusBarIconController"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v5, v3, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v6

    if-nez v6, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v5, v3, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v6

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->removeForTag(I)V

    iget-object v3, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_9
    invoke-virtual {v4, v0, p0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v4, p0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method
