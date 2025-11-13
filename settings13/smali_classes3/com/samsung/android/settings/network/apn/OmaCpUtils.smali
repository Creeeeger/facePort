.class public Lcom/samsung/android/settings/network/apn/OmaCpUtils;
.super Ljava/lang/Object;
.source "OmaCpUtils.java"


# static fields
.field public static final CP_URI:Landroid/net/Uri;

.field private static sActivity:Landroidx/fragment/app/FragmentActivity;

.field private static sObserver:Landroid/database/ContentObserver;

.field private static sOmaCpCounts:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetsActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.wsomacp.messagelist"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->CP_URI:Landroid/net/Uri;

    return-void
.end method

.method public static broadcastSetCp(Landroid/content/Context;)V
    .locals 5

    const-string v0, "OmaCpUtils"

    const-string v1, "broadcastSetCp()"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.wsomacp"

    const-string v4, "com.wsomacp.ui.FrontControllerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0xa000000

    .line 103
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getContentObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 32
    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Landroid/database/ContentObserver;

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.messaging"

    .line 47
    invoke-static {v0, p0}, Lcom/android/settings/Utils;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->isOmaCpPackageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 85
    invoke-static {p0}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->updateCpCounts(Landroid/content/Context;)V

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OmaCp Count : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OmaCpUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isOmaCpPackageEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.wsomacp"

    .line 56
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "OmaCpUtils"

    const-string v1, "there is\'t Omacp Package"

    .line 58
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static registerObserver(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 112
    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 113
    sput-object p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    .line 116
    :cond_0
    :try_start_0
    sget-object p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->CP_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OmaCpUtils"

    const-string v0, "Can\'t register ContentObserver"

    .line 118
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static unregisterObserver()V
    .locals 2

    .line 123
    sget-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    .line 125
    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private static declared-synchronized updateCpCounts(Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->CP_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 69
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    const-string v1, "OmaCpUtils"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOmaCp()  old OmaCpCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current OmaCpCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget v1, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I

    if-eq v1, p0, :cond_0

    .line 74
    sput p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "OmaCpUtils"

    const-string v1, "com.wsomacp.messagelist provider error"

    .line 79
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 80
    sput p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sOmaCpCounts:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
