.class public final Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAi:Landroid/content/pm/ApplicationInfo;

.field public final mCtx:Landroid/content/Context;

.field public final mHasSubstitutePermission:Z

.field public final mIconDpi:I

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRi:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V
    .locals 1

    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mIconDpi:I

    const-string p2, "android.permission.SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON"

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mHasSubstitutePermission:Z

    iput-object p3, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method public static makePresentationGetter(ILandroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda0;-><init>(ILandroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1, p0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    return-object p0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mIconDpi:I

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "loadIconFromResource: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TargetPresentationGetter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
