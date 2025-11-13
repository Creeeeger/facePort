.class public abstract Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCallDispatcher:Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;->DEBUG:Z

    const-string v3, "dispatchCall : "

    const/16 v4, 0x3e8

    const-string v5, "]"

    const-string v6, ", "

    const-string v7, "dispatchCall : caller="

    const-string v8, "LiveWallpaperProvider"

    if-eqz v2, :cond_0

    const-string v9, ", extras=["

    invoke-static {v1, v7, v6, p1, v9}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkCommonUtils;->dumpBundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eq v1, v4, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;->mCallDispatcher:Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "call : dispatcher is null. method="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v4

    if-nez v4, :cond_10

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;->mCallDispatcher:Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "LiveWallpaperProviderCallDispatcher"

    if-nez p1, :cond_3

    const-string p0, "dispatchCall: provider call method is null"

    invoke-static {v4, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "get_engine_running_state"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_1
    const-string v9, "get_thumbnail_by_backup_id"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_2
    const-string v9, "get_thumbnail"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_3
    const-string v9, "get_screenshot"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_4
    const-string v9, "capture_surface"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    move v6, p2

    goto :goto_1

    :sswitch_5
    const-string v9, "prepare_wallpaper"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_1

    :cond_9
    move v6, v0

    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string p0, "provider call method is not available = "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object p2, v7

    goto/16 :goto_5

    :pswitch_0
    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Params;

    invoke-direct {v1, p3}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Params;-><init>(Landroid/os/Bundle;)V

    iget p3, v1, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Params;->which:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperEngineManager;->getEngine(I)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    move-result-object p0

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onGetEngineRunningState : engine is null. which="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    new-instance p3, Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateOptions;

    invoke-direct {p3}, Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateOptions;-><init>()V

    invoke-virtual {p0, p3}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onGetRunningState(Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateOptions;)Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateResults;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/data/RunningStateResults;->mExtras:Landroid/os/Bundle;

    goto :goto_3

    :cond_b
    move-object p0, v7

    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "onGetEngineRunningState : exist="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    move p2, v0

    :goto_4
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_d

    goto :goto_2

    :cond_d
    new-instance p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Result;

    invoke-direct {p2, p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Result;-><init>(Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_1
    new-instance p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnailByBackupId$Params;

    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnailByBackupId$Params;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :pswitch_2
    new-instance p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;

    invoke-direct {p2, p3}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, p2}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;->onGetThumbnail(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Result;

    move-result-object p2

    goto :goto_5

    :pswitch_3
    new-instance p2, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;

    invoke-direct {p2, p3}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, p2}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;->onGetScreenshot(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;)Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Result;

    move-result-object p2

    goto :goto_5

    :pswitch_4
    new-instance p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/PrepareWallpaper$Params;

    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/sdk/provider/call/PrepareWallpaper$Params;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :goto_5
    if-nez p2, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p2}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    :goto_6
    if-eqz v2, :cond_f

    const-string p0, ", result=["

    invoke-static {v3, p1, p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v7}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkCommonUtils;->dumpBundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-object v7

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "dispatchCall : caller should be signed with platform signature. caller="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :sswitch_data_0
    .sparse-switch
        -0x73fe4736 -> :sswitch_5
        -0x62f74b4c -> :sswitch_4
        -0x61878611 -> :sswitch_3
        0x6dfe2743 -> :sswitch_2
        0x72483a4c -> :sswitch_1
        0x7c00001d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getCallDispatcher()Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher;
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;->getCallDispatcher()Lcom/android/systemui/wallpaper/provider/ProviderCallDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProvider;->mCallDispatcher:Lcom/samsung/android/wallpaper/live/sdk/provider/LiveWallpaperProviderCallDispatcher;

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
