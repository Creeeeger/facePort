.class public Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
.super Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfoPresentationGetter"
.end annotation


# instance fields
.field private final blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V
    .locals 1

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method blacklist getAppLabelForSubstitutePermission()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAppSubLabelInternal()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic blacklist getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method blacklist getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ResolverListAdapter"

    const-string v3, "SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON permission granted but couldn\'t find resources for package"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public bridge synthetic blacklist getLabel()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getSubLabel()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getUserHandle(I)Landroid/os/UserHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist isSecureFolderComponent()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->isSecureFolderComponent()Z

    move-result v0

    return v0
.end method
