.class public Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static sDefaultLogInterface:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

.field private static sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sDefaultLogInterface:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    sput-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static setLogDispatcher(Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->sLogImpl:Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$ILog;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
