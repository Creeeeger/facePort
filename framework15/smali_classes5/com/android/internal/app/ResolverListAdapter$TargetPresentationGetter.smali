.class abstract Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetPresentationGetter"
.end annotation


# instance fields
.field private final blacklist mAi:Landroid/content/pm/ApplicationInfo;

.field private blacklist mCtx:Landroid/content/Context;

.field private final blacklist mHasSubstitutePermission:Z

.field private final blacklist mIconDpi:I

.field protected blacklist mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mIconDpi:I

    instance-of v0, p1, Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.permission.SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    :goto_1
    return-void
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method abstract blacklist getAppLabelForSubstitutePermission()Ljava/lang/String;
.end method

.method abstract blacklist getAppSubLabelInternal()Ljava/lang/String;
.end method

.method public blacklist getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public blacklist getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsOverlayThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetAppIconTheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/core/pm/PmUtils;->supportLiveIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-nez v0, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ResolverListAdapter"

    const-string v3, "Failed to load icon"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method abstract blacklist getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getAppLabelForSubstitutePermission()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public blacklist getSubLabel()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserHandle(I)Landroid/os/UserHandle;
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isSecureFolderComponent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadIconFromResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist loadLabelFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
