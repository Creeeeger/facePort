.class public final Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mTitle:Ljava/lang/String;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const v1, 0x7f060662

    invoke-virtual {p3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p3, p2, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v1, -0x2

    const-string v2, "Settings.PERSONAL_CATEGORY_HEADER"

    if-eq p1, v1, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    const-string p2, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {v0, p2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    const-string p2, "Settings.PRIVATE_CATEGORY_HEADER"

    invoke-virtual {v0, p2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "title requested for unexpected user id "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p3, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_2
    new-instance p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mTitle:Ljava/lang/String;

    return-void
.end method
