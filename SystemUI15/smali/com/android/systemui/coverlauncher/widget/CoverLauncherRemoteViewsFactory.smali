.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field public mAppList:Ljava/util/ArrayList;

.field public final mAppWidgetId:I

.field public final mBadgeUtils:Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

.field public final mContext:Landroid/content/Context;

.field public final mItemList:Ljava/util/ArrayList;

.field public mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

.field public final mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

.field public final mWidgetUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppWidgetId:I

    new-instance p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    invoke-direct {p2, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;

    invoke-direct {v0, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mWidgetUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getAppListFromDB(Z)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

    invoke-direct {p2, p1}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mBadgeUtils:Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

    iget-object p2, p2, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "notification_badging"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    invoke-direct {p2, p1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-boolean v0, p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getAppListFromDB(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0d0573

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getAppListFromDB(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->setItemData()V

    return-void
.end method

.method public final onDataSetChanged()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppWidgetId:I

    const-string v1, "onDataSetChanged, id="

    const-string v2, "CoverLauncherRemoteViewsFactory"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getAppListFromDB(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->setItemData()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    :cond_0
    return-void
.end method

.method public final setItemData()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->getCount()I

    move-result v3

    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_13

    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    iget v6, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->profileId:I

    iget v7, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppWidgetId:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "createRemoteViews, packageName="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CoverLauncherRemoteViewsFactory"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mWidgetUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v0, v7, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v10, 0x7f0d0572

    invoke-direct {v8, v0, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    iget-object v0, v7, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    :try_start_0
    iget-object v0, v10, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v12, v10, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x30

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v0, v13

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getGrayFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v12, "Failed to get Application Icon "

    const-string v13, ", profileId : "

    invoke-static {v6, v12, v9, v13}, Lcom/android/app/tracing/coroutines/TraceData$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CoverLauncherPackageUtils"

    invoke-static {v13, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    move-object v12, v11

    :cond_0
    :goto_1
    const v0, 0x7f0a00f4

    if-nez v12, :cond_1

    goto :goto_5

    :cond_1
    sget-object v10, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->Companion:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_2

    move-object v10, v12

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_4

    :cond_2
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    if-gtz v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_3
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    invoke-virtual {v12, v4, v4, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    iget-object v12, v7, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07188b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-static {v10, v12, v12, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_5
    new-instance v10, Landroid/content/Intent;

    iget-object v7, v7, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    invoke-direct {v10, v7, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "action_launch_app"

    invoke-virtual {v10, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v12, "key_package_name"

    invoke-virtual {v7, v12, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "key_profile_id"

    invoke-virtual {v7, v12, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const v7, 0x7f0a00ff

    invoke-virtual {v8, v7, v10}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    iget-object v7, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    invoke-virtual {v7, v9}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, ""

    :cond_5
    const v10, 0x7f0a0109

    invoke-virtual {v8, v10, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mBadgeUtils:Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

    iget-object v12, v7, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "notification_badging"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_6

    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v4

    :goto_6
    const/16 v13, 0x8

    if-eqz v12, :cond_12

    sget-object v12, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->Companion:Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager$Companion;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v12, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->items:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    if-eqz v6, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "packageName : "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", badgeItem : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "BadgeUtils"

    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v7, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->BADGE_URI:Landroid/net/Uri;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v20

    sget-object v18, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->COLUMNS:[Ljava/lang/String;

    const-string v19, "package = ?"

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_7

    :try_start_1
    const-string v12, "Cursor is null"

    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v12, v4

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-gtz v12, :cond_8

    const-string v12, "Cursor count is invalid"

    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move v12, v4

    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "badge provider info, pkgName : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", className : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", badgeCount : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_8

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget v0, v6, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    const/16 v2, 0x3e7

    if-le v0, v2, :cond_a

    move v0, v2

    :cond_a
    if-ge v0, v12, :cond_b

    goto :goto_a

    :cond_b
    move v12, v0

    :goto_a
    if-le v12, v2, :cond_c

    goto :goto_c

    :cond_c
    move v2, v12

    goto :goto_c

    :goto_b
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_d
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_e

    const v0, 0x7f0a00f5

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0a00f7

    invoke-virtual {v8, v4, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f0a00f6

    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v9, 0x7f0a00fa

    invoke-virtual {v8, v9, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a00f4

    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_e
    const v0, 0x7f0a00f5

    const v4, 0x7f0a00f7

    const v6, 0x7f0a00f6

    const v9, 0x7f0a00fa

    iget-object v11, v7, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "badge_app_icon_type"

    const/4 v14, 0x0

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v4, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_d

    :cond_f
    invoke-virtual {v8, v9, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v9, 0x63

    if-le v2, v9, :cond_10

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v4, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v6, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_d

    :cond_10
    const/16 v9, 0x9

    if-le v2, v9, :cond_11

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v4, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_d

    :cond_11
    invoke-virtual {v8, v0, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v4, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_d
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f130d18

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    const v0, 0x7f0a00f4

    goto :goto_f

    :cond_12
    move v14, v4

    const v0, 0x7f0a00f5

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a00f7

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a00f6

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a00fa

    invoke-virtual {v8, v0, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_e

    :goto_f
    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v5, v2

    move v4, v14

    goto/16 :goto_0

    :cond_13
    return-void
.end method
