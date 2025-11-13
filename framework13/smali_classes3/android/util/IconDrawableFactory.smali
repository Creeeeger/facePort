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
.method private constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "embedShadow"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 57
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    .line 58
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 59
    new-instance v0, Landroid/util/LauncherIcons;

    invoke-direct {v0, p1}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    .line 60
    iput-boolean p2, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    .line 61
    return-void
.end method

.method private blacklist getDefaultUserIconBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "userId"    # I

    .line 125
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
    .param p1, "userId"    # I

    .line 121
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

.method public static greylist newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/util/IconDrawableFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static greylist-max-o newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "embedShadow"    # Z

    .line 141
    new-instance v0, Landroid/util/IconDrawableFactory;

    invoke-direct {v0, p0, p1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-r getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 69
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 73
    invoke-virtual {p0, p1, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "userId"    # I

    .line 81
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/util/IconDrawableFactory;->needsBadging(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 99
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601eb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 102
    .local v1, "badgeColor":I
    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    const v3, 0x10803fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 104
    .local v2, "badge":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v3, v0, v2, v1}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .end local v1    # "badgeColor":I
    .end local v2    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    .line 111
    invoke-direct {p0, p3}, Landroid/util/IconDrawableFactory;->getUpdatableUserIconBadgeId(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p3}, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;-><init>(Landroid/util/IconDrawableFactory;I)V

    .line 110
    const-string v4, "SOLID_COLORED"

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    iget-object v3, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3, p3}, Landroid/os/UserManager;->getUserBadgeColor(I)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .end local v1    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object v0
.end method

.method public greylist-max-o getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v0, p1}, Landroid/util/LauncherIcons;->wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getBadgedIcon$0$android-util-IconDrawableFactory(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "userId"    # I

    .line 113
    invoke-direct {p0, p1}, Landroid/util/IconDrawableFactory;->getDefaultUserIconBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o needsBadging(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 64
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
