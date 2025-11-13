.class public final Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBixbyCaptureSharedActivityName:Ljava/lang/String;

.field public final mBixbyCaptureSharedPackageName:Ljava/lang/String;

.field public final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public final mContext:Landroid/content/Context;

.field public final mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

.field public final mImageDisplayName:Ljava/lang/String;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mImageFileName:Ljava/lang/String;

.field public final mImageFilePath:Ljava/lang/String;

.field public mImageTime:J

.field public final mIsBixbyCaptureShared:Z

.field public mIsSavingFailed:Z

.field public mIsScrollCaptureConnectionListenerInvoked:Z

.field public final mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

.field public final mQuickShareData:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

.field public final mRandom:Ljava/util/Random;

.field public mScreenshotId:Ljava/lang/String;

.field public mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

.field public final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field public final mScrollCaptureTransactionId:J

.field public final mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)V
    .locals 7

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    new-instance p4, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-direct {p4}, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    new-instance p4, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

    invoke-direct {p4}, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mQuickShareData:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object p3, p5, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget p3, p3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-static {p3}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result p3

    const-string p4, "Screenshot"

    if-eqz p3, :cond_0

    const-string p3, "CoverScreen"

    goto/16 :goto_4

    :cond_0
    iget-object p3, p5, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object p3, p3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    const-string v1, ""

    if-eqz p3, :cond_3

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v3, p2

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result v5

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {v2, v4, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    move-object p3, v1

    :goto_3
    if-eqz p3, :cond_4

    const-string v2, "[^\\p{ASCII}]"

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "[\\\\/?%*:|\"<>.]"

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "getTopMostApplicationName() : "

    invoke-static {v1, p3, p4}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p3, "getTopMostApplicationName() appName : null"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v0

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screenshot_"

    const-string v3, "_"

    invoke-static {v2, v1, v3, p3}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isFormatPNG(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_6

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    :cond_6
    if-eqz p3, :cond_7

    const-string p3, ".png"

    :goto_5
    invoke-static {v1, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_7
    const-string p3, ".jpg"

    goto :goto_5

    :goto_6
    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getScreenshotSaveInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, p2

    const-string v5, "external_primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "storage"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_7
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iput-object p6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    iget-object p3, p5, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    iget-object p5, p3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    iget p6, p3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    const/4 v1, 0x5

    if-ne p6, v1, :cond_b

    if-eqz p5, :cond_b

    const-string p6, "packageName"

    invoke-virtual {p5, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_b

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p5

    if-lez p5, :cond_a

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p5

    const-string v3, "activityName"

    invoke-virtual {p5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p5

    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception p5

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v1, "Exception e : "

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    new-instance p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    invoke-direct {p6}, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    invoke-direct {v1, p0, p4, p5, p3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V

    const-string p0, "com.samsung.android.app.smartcapture"

    const-string p3, "connect"

    const-string p4, "[ScrCap]_RemoteScreenshotInterface"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p3, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    if-eqz p3, :cond_c

    const-string p0, "connect : Already connected"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_c
    iget-object p3, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    if-eqz p3, :cond_d

    const-string p0, "connect : Connection already requested"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mContext:Landroid/content/Context;

    iput-object v1, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    new-instance p1, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    invoke-direct {p1, p6, v3, v4}, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;-><init>(Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;J)V

    iput-object p1, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p3, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mContext:Landroid/content/Context;

    const-string p5, "isPackageAvailable : "

    :try_start_2
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    if-nez p3, :cond_e

    const-string p3, "isPackageAvailable : Failed to get package manager!"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move p3, p2

    goto :goto_d

    :catch_2
    move-exception p3

    goto :goto_c

    :cond_e
    invoke-virtual {p3, p0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    if-eqz p3, :cond_f

    move p3, v2

    goto :goto_a

    :cond_f
    move p3, p2

    :goto_a
    if-eqz p3, :cond_10

    const-string v1, "available"

    goto :goto_b

    :cond_10
    const-string v1, "not available"

    :goto_b
    invoke-virtual {p5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :goto_c
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "isPackageAvailable : not available. e="

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_d
    const-string p5, "com.samsung.android.app.smartcapture.screenshot.core.ScreenshotRemoteService"

    if-eqz p3, :cond_11

    const-string p3, "SmartCapture will be binded."

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_11
    const-string p0, "ScrollCapture will be binded."

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.samsung.android.app.smartcapture.screenshot"

    invoke-virtual {p1, p0, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_e
    iget-object p0, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mContext:Landroid/content/Context;

    iget-object p3, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    invoke-virtual {p0, p1, p3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "connect : bindService failed"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->onConnectionResult(Z)V

    :cond_12
    iput-object v0, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mContext:Landroid/content/Context;

    iput-object v0, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    iput-object v0, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    iput-object v0, p6, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    :cond_13
    :goto_f
    return-void
.end method

.method public static getSubjectString(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Screenshot ("

    const-string v0, ")"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFormatPNG(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/16 v1, 0x96

    const/4 v2, 0x0

    const-string/jumbo v3, "smart_capture_screenshot_format"

    if-gt v1, v0, :cond_0

    const/16 v1, 0xa0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo v0, "screenshotFormatValue : "

    const-string v1, "Screenshot"

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method


# virtual methods
.method public final buildSmartActions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action_type"

    const-string v4, "Smart Action"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/screenshot/SmartActionsReceiver;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android:screenshot_action_intent"

    iget-object v6, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v6, "android:screenshot_action_type"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "android:screenshot_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v5, "android:smart_actions_enabled"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/high16 v5, 0x14000000

    invoke-static {p1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$Action$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v6}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createQuickShareAction(Landroid/app/Notification$Action;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;Landroid/os/UserHandle;)Landroid/app/Notification$Action;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p2, p6, p7, p3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->queryQuickShareAction(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/net/Uri;)Landroid/app/Notification$Action;

    move-result-object p6

    if-eqz p6, :cond_2

    iget-object p7, p6, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p7

    iget-object p1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {p7, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p6

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    new-instance p6, Landroid/content/Intent;

    iget-object p7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/screenshot/SmartActionsReceiver;

    invoke-direct {p6, p7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p7, "android:screenshot_action_intent"

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p6, p7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p6

    new-instance p7, Landroid/content/Intent;

    invoke-direct {p7}, Landroid/content/Intent;-><init>()V

    const-string v0, "image/png"

    invoke-virtual {p7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p7, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p4, p5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getSubjectString(J)Ljava/lang/String;

    move-result-object p4

    const-string p5, "android.intent.extra.SUBJECT"

    invoke-virtual {p7, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p4, Landroid/content/ClipData;

    new-instance p5, Landroid/content/ClipDescription;

    const-string v1, "content"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v1, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p4, p5, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    invoke-virtual {p7, p4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p3, 0x1

    invoke-virtual {p7, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p4, "android:screenshot_action_intent_fillin"

    invoke-virtual {p6, p4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p4

    const/high16 p5, 0x10000000

    invoke-virtual {p4, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    const-string p6, "action_type"

    const-string p7, "Smart Action"

    invoke-virtual {p5, p6, p7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string p7, "android:screenshot_action_type"

    invoke-virtual {p4, p7, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p6

    const-string p7, "android:screenshot_id"

    invoke-virtual {p6, p7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p6, "android:smart_actions_enabled"

    invoke-virtual {p2, p6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    const/high16 p6, 0x14000000

    invoke-static {p2, p0, p4, p6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p4

    iget-object p1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p2, p4, p1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2, p3}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v9, p0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    const-string v0, "doInBackground:  volumeName="

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    move-object v2, v11

    goto/16 :goto_14

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v8, v1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screenshot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v12, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "systemui"

    const-string v2, "enable_screenshot_notification_smart_actions"

    invoke-static {v1, v2, v10}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v12

    :goto_1
    const-wide/16 v13, 0x3e8

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v3, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    if-eqz v3, :cond_3

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v8, v2, v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->queryQuickShareAction(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/net/Uri;)Landroid/app/Notification$Action;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mQuickShareData:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

    iput-object v2, v3, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2, v3, v10}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;I)V

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    move v1, v10

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_3
    :try_start_1
    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getScreenshotSaveInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getScreenshotSaveInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v10

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_4

    :cond_4
    aget-object v3, v3, v10

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v11, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    div-long/2addr v11, v13

    iget-object v7, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isFormatPNG(Landroid/content/Context;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_5

    :try_start_2
    const-string v7, "image/png"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_5
    :try_start_3
    const-string v7, "image/jpeg"

    :goto_5
    iget-object v15, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v15, v15, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v13, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v13, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    new-instance v14, Ljava/io/File;

    iget-object v10, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v10, v13

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v13

    move/from16 v16, v1

    const-string v1, "Screenshot"

    move-object/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " relativePath="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mImageFilePath="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mImageDisplayName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mImageFileName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " imageTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " dateSeconds="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mimeType="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " imageWidth="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " imageHeight="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-wide/from16 v19, v13

    iget-object v13, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v13, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v3, Lcom/android/systemui/screenshot/ImageExporter;->mImageFileRelativePath:Ljava/lang/String;

    sput-object v2, Lcom/android/systemui/screenshot/ImageExporter;->mVolumeName:Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/screenshot/ImageExporter;->mImageFilePath:Ljava/lang/String;

    sput-object v8, Lcom/android/systemui/screenshot/ImageExporter;->mImageDisplayName:Ljava/lang/String;

    sput-object v4, Lcom/android/systemui/screenshot/ImageExporter;->mImageFileName:Ljava/lang/String;

    sput-wide v5, Lcom/android/systemui/screenshot/ImageExporter;->mImageTime:J

    sput-wide v11, Lcom/android/systemui/screenshot/ImageExporter;->mSecDate:J

    sput-object v7, Lcom/android/systemui/screenshot/ImageExporter;->mMimeType:Ljava/lang/String;

    sput v15, Lcom/android/systemui/screenshot/ImageExporter;->mWidth:I

    sput v10, Lcom/android/systemui/screenshot/ImageExporter;->mHeight:I

    sput-wide v19, Lcom/android/systemui/screenshot/ImageExporter;->mSize:J

    sput-object v13, Lcom/android/systemui/screenshot/ImageExporter;->mScreenshotsWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, v0, Lcom/android/systemui/screenshot/ImageExporter;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "comp"

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    const-string v0, "Screenshot"

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_6
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_7

    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_b

    :cond_7
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/android/systemui/screenshot/ImageExporter;->mCapturedAppInfo:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    new-instance v3, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->displayId:I

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/os/UserHandle;I)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v0

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ImageExporter$Result;

    const-string v1, "Screenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved screenshot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    iget-wide v0, v0, Lcom/android/systemui/screenshot/ImageExporter$Result;->timestamp:J

    iput-wide v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;->REGULAR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v10, v16

    move-object/from16 v7, v17

    invoke-static {v7, v1, v10}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActionsFuture(Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_8

    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "screenshot_notification_smart_actions_timeout_ms"

    const/16 v5, 0x3e8

    invoke-static {v2, v3, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object v5, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v5}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActions(Ljava/util/concurrent/CompletableFuture;ILcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->buildSmartActions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :cond_8
    :goto_a
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v8, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    iput-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->owner:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mQuickShareData:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

    iget-object v2, v1, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-wide v5, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createQuickShareAction(Landroid/app/Notification$Action;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;Landroid/os/UserHandle;)Landroid/app/Notification$Action;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->quickShareAction:Landroid/app/Notification$Action;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-wide v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getSubjectString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->subject:Ljava/lang/String;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_c

    :goto_b
    iput-boolean v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    const-string v1, "Screenshot"

    const-string v2, "Failed to store screenshot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iput-object v1, v2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    iput-object v1, v2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    iput-object v1, v2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->quickShareAction:Landroid/app/Notification$Action;

    iput-object v1, v2, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->subject:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mQuickShareData:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

    iput-object v1, v3, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_c
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    if-eqz v1, :cond_a

    monitor-enter v1

    :try_start_6
    iget-boolean v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    :try_start_8
    const-string v4, "Screenshot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground : Exception thrown during waiting ScrollCapture connection. e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    const-string v0, "Screenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground : ScrollCapture connection waiting time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v1

    goto :goto_f

    :goto_e
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_a
    :goto_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "notifiedApps"

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->notifiedApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    if-eqz v1, :cond_c

    iget-wide v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    iget-object v4, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const-string v5, "notifyGlobalScreenshotFinished"

    const-string v6, "[ScrCap]_RemoteScreenshotInterface"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    if-eqz v1, :cond_b

    :try_start_9
    check-cast v1, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub$Proxy;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub$Proxy;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyGlobalScreenshotFinished : e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_b
    const-string v0, "notifyGlobalScreenshotFinished : No service connection"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotInterface:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    invoke-virtual {v0}, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->disconnect()V

    :cond_c
    iget-boolean v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    if-eqz v0, :cond_d

    const-string v0, "Screenshot"

    const-string v1, "Failed to save screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_d
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v0, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.systemui.screenshot.SCREENSHOT_URI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Screenshot"

    const-string v3, "Send broadcast : screenshot contentUri : "

    invoke-static {v3, v1, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.systemui.screenshot.permission.RECEIVE_SCREENSHOT_URI"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-boolean v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    if-eqz v0, :cond_11

    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v3, v3, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    const-string/jumbo v4, "startChooserActivity packageName : "

    const-string v5, ", activityName : "

    const-string v6, ", imageUri : "

    invoke-static {v4, v1, v5, v2, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Screenshot"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_11

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isFormatPNG(Landroid/content/Context;)Z

    move-result v6

    if-eqz v1, :cond_f

    if-eqz v2, :cond_e

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_11

    :cond_e
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    :goto_11
    const-string v2, "image/jpeg"

    const-string v7, "image/png"

    if-eqz v6, :cond_10

    move-object v8, v7

    goto :goto_12

    :cond_10
    move-object v8, v2

    :goto_12
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v10, 0xb080001

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_11
    :goto_13
    const/4 v2, 0x0

    goto :goto_14

    :cond_12
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_13

    move-object v2, v7

    :cond_13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_14
    return-object v2
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->quickShareAction:Landroid/app/Notification$Action;

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->subject:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mQuickShareData:Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController$QuickShareData;->quickShareAction:Landroid/app/Notification$Action;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    invoke-virtual {v1, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public queryQuickShareAction(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/net/Uri;)Landroid/app/Notification$Action;
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    sget-object p4, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;->REGULAR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p2, p3, p1}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActionsFuture(Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const/16 p2, 0x1f4

    const-string/jumbo p3, "systemui"

    const-string/jumbo p4, "screenshot_notification_quick_share_actions_timeout_ms"

    invoke-static {p3, p4, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p0}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActions(Ljava/util/concurrent/CompletableFuture;ILcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$Action;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
