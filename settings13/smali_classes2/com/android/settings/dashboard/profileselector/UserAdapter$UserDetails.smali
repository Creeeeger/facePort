.class public Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/profileselector/UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$OE4MGRsxZ2l_XgKEg1vPBUgYrJs(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->lambda$getTitle$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V3QVi2qsrf6SB4EsEs3aJ8wwZr4(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->lambda$getTitle$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserHandle(Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 69
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 75
    sget v0, Lcom/android/settings/R$color;->sec_profile_select_icon_tint:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {p3, p2, p1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 91
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 93
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    .line 94
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_1

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string p1, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {v0, p1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p1, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {v0, p1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTitle$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 98
    sget v0, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTitle$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 101
    sget v0, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
