.class public abstract Lcom/samsung/android/settings/share/common/TargetPresentationGetter;
.super Ljava/lang/Object;
.source "TargetPresentationGetter.java"


# static fields
.field private static final sSProtect:Z


# instance fields
.field protected final mAi:Landroid/content/pm/ApplicationInfo;

.field protected final mCtx:Landroid/content/Context;

.field protected final mHasSubstitutePermission:Z

.field protected final mIconDpi:I

.field protected mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$8nn24urzYG0RBGs2xEXe1X2-D_M(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->lambda$makePresentationGetter$0(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dD-YUu4t_wkWWx2nFJXugVVipY0(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->lambda$makePresentationGetter$1(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wIvTgDF17Oj2f43Jcg7FQRpheKU(Landroid/content/ComponentName;I)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->lambda$makePresentationGetter$2(Landroid/content/ComponentName;I)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->sSProtect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mCtx:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    .line 58
    iput p2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mIconDpi:I

    .line 59
    iget-object p2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p3, "android.permission.SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON"

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mHasSubstitutePermission:Z

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 166
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 167
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 171
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 170
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 172
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private static synthetic lambda$makePresentationGetter$0(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originalIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TargetPresentationGetter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$makePresentationGetter$1(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TargetPresentationGetter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$makePresentationGetter$2(Landroid/content/ComponentName;I)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find resolveInfo with (componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", userId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TargetPresentationGetter"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makePresentationGetter(Landroid/content/Context;Landroid/content/ComponentName;ILjava/util/List;)Lcom/samsung/android/settings/share/common/TargetPresentationGetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Lcom/samsung/android/settings/share/common/TargetPresentationGetter;"
        }
    .end annotation

    const-string v0, "activity"

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 190
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    .line 191
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p1, p0, p2}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;I)V

    .line 192
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;-><init>()V

    .line 199
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;I)V

    .line 200
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p3, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;I)V

    .line 205
    invoke-virtual {p0, p3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    return-object p0
.end method

.method public static makePresentationGetter(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/settings/share/common/TargetPresentationGetter;
    .locals 2

    const-string v0, "activity"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 182
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    .line 183
    new-instance v1, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v1
.end method


# virtual methods
.method abstract getAppLabelForSubstitutePermission()Ljava/lang/String;
.end method

.method abstract getAppSubLabelInternal()Ljava/lang/String;
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected getIconBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->hasTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-nez v0, :cond_4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last icon load = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TargetPresentationGetter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    sget-boolean v1, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->sSProtect:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->isLock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method abstract getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getAppLabelForSubstitutePermission()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getSubLabel()Ljava/lang/String;
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 0

    .line 120
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public hasSubstitutePermission()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mHasSubstitutePermission:Z

    return p0
.end method

.method abstract hasTheme()Z
.end method

.method protected loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 158
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mIconDpi:I

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Landroidx/core/content/res/ResourcesCompat;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadIconFromResource: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TargetPresentationGetter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
