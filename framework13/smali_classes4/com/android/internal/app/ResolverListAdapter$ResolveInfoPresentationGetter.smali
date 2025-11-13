.class public Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
.super Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveInfoPresentationGetter"
.end annotation


# instance fields
.field private final blacklist mRi:Landroid/content/pm/ResolveInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetKnoxIcon(Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getKnoxIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iconDpi"    # I
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 1251
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    .line 1252
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    .line 1253
    return-void
.end method

.method private blacklist getKnoxIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.android.internal.app.ForwardIntentToParent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1296
    :cond_1
    return-object v0
.end method


# virtual methods
.method blacklist getAppLabelForSubstitutePermission()Ljava/lang/String;
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAppSubLabelInternal()Ljava/lang/String;
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1257
    const/4 v0, 0x0

    .line 1260
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1262
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1261
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1267
    :cond_0
    goto :goto_0

    .line 1264
    :catch_0
    move-exception v1

    .line 1265
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ResolverListAdapter"

    const-string v3, "SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON permission granted but couldn\'t find resources for package"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1272
    :cond_1
    return-object v0
.end method

.method public blacklist getSubLabel()Ljava/lang/String;
    .locals 4

    .line 1317
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mHasSubstitutePermission:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->isSecureFolderComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1327
    :cond_0
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSemChooserAppSourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;

    .line 1328
    .local v1, "chooserApp":Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1329
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1330
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1333
    .end local v1    # "chooserApp":Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
    :cond_1
    goto :goto_0

    .line 1334
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1318
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, "appSubLabel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1322
    return-object v0

    .line 1324
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getUserHandle(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "uid"    # I

    .line 1301
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.internal.app.ForwardIntentToParent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isSecureFolderComponent()Z
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.internal.app.ForwardIntentToParent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1310
    const-string v1, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1311
    const-string v1, "com.samsung.knox.securefolder.presentation.switcher.view.B2CStoreFilesActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1309
    :goto_1
    return v0
.end method
