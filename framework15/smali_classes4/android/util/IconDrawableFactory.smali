.class public Landroid/util/IconDrawableFactory;
.super Ljava/lang/Object;
.source "IconDrawableFactory.java"


# instance fields
.field protected final greylist-max-o mContext:Landroid/content/Context;

.field protected final blacklist mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected final greylist-max-o mEmbedShadow:Z

.field protected final greylist-max-o mLauncherIcons:Landroid/util/LauncherIcons;

.field protected final greylist-max-o mPm:Landroid/content/pm/PackageManager;

.field protected final greylist-max-o mUm:Landroid/os/UserManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$EoW7C7TuolVRrnLqaSjZw4IAXEw(Landroid/util/IconDrawableFactory;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IconDrawableFactory;->lambda$getBadgedIcon$0(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/util/LauncherIcons;

    invoke-direct {v0, p1}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    iput-boolean p2, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    return-void
.end method

.method private blacklist getDefaultUserIconBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserIconBadgeResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getUpdatableUserIconBadgeId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WORK_PROFILE_ICON_BADGE"

    goto :goto_0

    :cond_0
    const-string v0, "UNDEFINED"

    :goto_0
    return-object v0
.end method

.method private synthetic blacklist lambda$getBadgedIcon$0(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Landroid/util/IconDrawableFactory;->getDefaultUserIconBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static greylist newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;
    .locals 2

    new-instance v0, Landroid/util/IconDrawableFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static greylist-max-o newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;
    .locals 1

    new-instance v0, Landroid/util/IconDrawableFactory;

    invoke-direct {v0, p0, p1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-r getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/util/IconDrawableFactory;->needsBadging(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106026c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    const v3, 0x108044a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v3, v0, v2, v1}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/util/IconDrawableFactory;->getUpdatableUserIconBadgeId(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p3}, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;-><init>(Landroid/util/IconDrawableFactory;I)V

    const-string v4, "SOLID_COLORED"

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    iget-object v3, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3, p3}, Landroid/os/UserManager;->getUserBadgeColor(I)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public greylist-max-o getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v0, p1}, Landroid/util/LauncherIcons;->wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o needsBadging(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
