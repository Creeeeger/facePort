.class Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
.super Lcom/samsung/android/settings/share/common/TargetPresentationGetter;
.source "ResolveInfoTargetPresentationGetter.java"


# instance fields
.field private final mRi:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 26
    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V

    .line 27
    iput-object p3, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method getAppLabelForSubstitutePermission()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getAppSubLabelInternal()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "TargetPresentationGetter"

    const-string v2, "SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON permission granted but couldn\'t find resources for package"

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 80
    iget v3, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 81
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 86
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 2

    .line 58
    sget-object v0, Lcom/samsung/android/settings/share/common/ShareConstants;->ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 59
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method hasTheme()Z
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mCtx:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_appicon_theme_package"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
