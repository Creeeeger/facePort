.class public Lcom/android/settingslib/applications/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static mSearchKeyword:Ljava/lang/CharSequence;

.field private static final sBrowserIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$RRNN7uHWrFUXUAwh7XEUrC0WPP0(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->lambda$preloadTopIcons$0(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    .line 65
    sput-object v0, Lcom/android/settingslib/applications/AppUtils;->mSearchKeyword:Ljava/lang/CharSequence;

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 74
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/AppUtils;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public static cancelDisablePolicy(Landroid/content/pm/ApplicationInfo;)V
    .locals 6

    .line 214
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    .line 215
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->restrict(IIZLjava/lang/String;I)Z

    return-void
.end method

.method public static drawableToBitmapDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    .line 438
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 440
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 443
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 223
    invoke-static {p0, p1}, Lcom/android/settingslib/utils/applications/AppUtils;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-eqz p1, :cond_6

    .line 317
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 321
    :cond_0
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    move-result-object v0

    .line 322
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 323
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 325
    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/applications/AppIconCacheManager;->get(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 327
    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 332
    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    .line 334
    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getIconDrawableFactory()Landroid/util/IconDrawableFactory;

    move-result-object v3

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 335
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1

    .line 336
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->drawableToBitmapDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    move-object v3, p0

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 339
    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/applications/AppIconCacheManager;->put(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 341
    invoke-static {p1, v0}, Lcom/android/settingslib/applications/AppUtils;->setAppEntryMounted(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Z)V

    const p1, 0x1080af5

    .line 342
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    .line 345
    :cond_3
    iget-boolean v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v4, :cond_5

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    .line 347
    invoke-static {p1, v3}, Lcom/android/settingslib/applications/AppUtils;->setAppEntryMounted(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Z)V

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 352
    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getIconDrawableFactory()Landroid/util/IconDrawableFactory;

    move-result-object v3

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 356
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_4

    .line 357
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->drawableToBitmapDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    move-object v3, p0

    goto :goto_1

    :cond_4
    move-object v3, p1

    .line 360
    :goto_1
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/applications/AppIconCacheManager;->put(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    return-object v3

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/applications/AppIconCacheManager;->get(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getIconWithoutCache(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 424
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 425
    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    .line 427
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->getIconDrawableFactory()Landroid/util/IconDrawableFactory;

    move-result-object p0

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    invoke-static {p1, v0}, Lcom/android/settingslib/applications/AppUtils;->setAppEntryMounted(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Z)V

    const p1, 0x1080af5

    .line 430
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getKeyword()Ljava/lang/CharSequence;
    .locals 1

    .line 117
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->mSearchKeyword:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static hasAppDefaults(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Z
    .locals 3

    .line 165
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p2

    .line 166
    invoke-static {p0, p3}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 167
    invoke-static {p0, p3}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 168
    invoke-static {p1, p3}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-nez p0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {p0, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " number of activities in preferred list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AppUtils"

    const-string v0, "mUsbManager.hasDefaults"

    .line 97
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAppInstalled(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 407
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 179
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    .line 180
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->isChangedByUser()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public static isBrowserApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .line 285
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x20000

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 289
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeepSleepingEnable(Ljava/lang/String;I)Z
    .locals 2

    .line 202
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->isChangedByUser()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->isChangedByUser()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public static isDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 305
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 304
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHiddenSystemModule(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->isHiddenModule(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstant(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    .line 129
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "settingsdebug.instant.packages"

    .line 136
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ","

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 141
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isMainlineModule(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 255
    :catch_0
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 260
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 261
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return v0
.end method

.method public static isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 190
    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    .line 191
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->isChangedByUser()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public static isSystemModule(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->isSystemModule(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$preloadTopIcons$0(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 395
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static preloadTopIcons(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 393
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 394
    new-instance v2, Lcom/android/settingslib/applications/AppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/applications/AppUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static setAppEntryMounted(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Z)V
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-eq v0, p1, :cond_0

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 417
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static setKeyword(Ljava/lang/CharSequence;)V
    .locals 0

    .line 114
    sput-object p0, Lcom/android/settingslib/applications/AppUtils;->mSearchKeyword:Ljava/lang/CharSequence;

    return-void
.end method
