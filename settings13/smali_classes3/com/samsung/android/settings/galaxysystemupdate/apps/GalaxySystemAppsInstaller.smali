.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;
.super Ljava/lang/Object;
.source "GalaxySystemAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;,
        Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;
    }
.end annotation


# static fields
.field private static SESSION_ID_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GalaxySystemAppsInstaller"


# instance fields
.field private apexPath:Landroid/net/Uri;

.field private context:Landroid/content/Context;

.field private destPath:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private installPackageName:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private packageInstaller:Landroid/content/pm/PackageInstaller;

.field private packageInstallerListener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;


# direct methods
.method public static synthetic $r8$lambda$TUfSaXy-EK6ypORwVZ6QYUE9YOw(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->lambda$notifyResult$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpackageInstaller(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;)Landroid/content/pm/PackageInstaller;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyProgress(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->notifyProgress(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyResult(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->notifyResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->handler:Landroid/os/Handler;

    .line 49
    iput-object p4, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->destPath:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->destPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    .line 52
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->apexPath:Landroid/net/Uri;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->installPackageName:Ljava/lang/String;

    return-void
.end method

.method private commitSession(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    const-string v0, "install_complete"

    .line 306
    sget v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->SESSION_ID_ERROR:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->context:Landroid/content/Context;

    invoke-direct {p0, v3, p1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->createIntentSender(Landroid/content/Context;ILjava/lang/String;)Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 315
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.content.pm.action.SESSION_UPDATED"

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstallerListener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 322
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v2, v1

    goto :goto_3

    :catch_3
    move-exception p0

    .line 320
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_1

    .line 327
    :try_start_3
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_2

    .line 327
    :try_start_4
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    :cond_2
    :goto_6
    throw p0
.end method

.method private createIntentSender(Landroid/content/Context;ILjava/lang/String;)Landroid/content/IntentSender;
    .locals 0

    .line 375
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x4000000

    invoke-static {p1, p2, p0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method private createSessionDowngrade()I
    .locals 9

    .line 94
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 98
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->installPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 99
    new-instance v2, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;

    iget-object v3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->installPackageName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstallerListener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;

    :try_start_0
    const-string v2, "android.content.pm.PackageInstaller$SessionParams"

    .line 102
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setInstallAsApex"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 103
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "setStaged"

    new-array v6, v4, [Ljava/lang/Class;

    .line 104
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "setRequestDowngrade"

    new-array v7, v1, [Ljava/lang/Class;

    .line 105
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    .line 109
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    .line 118
    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;I)V

    .line 159
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->notifyResult(Z)V

    .line 168
    sget p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->SESSION_ID_ERROR:I

    return p0

    :catch_1
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->notifyResult(Z)V

    .line 164
    sget p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->SESSION_ID_ERROR:I

    return p0

    :catch_2
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private synthetic lambda$notifyResult$0(Z)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;

    .line 356
    invoke-interface {v1, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;->onResult(Z)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->removeListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private notifyProgress(I)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyResult(Z)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private writeSession(I)I
    .locals 10

    .line 250
    sget v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->SESSION_ID_ERROR:I

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const-wide/16 v0, -0x1

    .line 258
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->apexPath:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_1
    move-wide v6, v0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v8, 0x0

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->apexPath:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "Name"

    const-wide/16 v4, 0x0

    move-object v2, p1

    .line 269
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v8

    const/high16 p0, 0x10000

    new-array p0, p0, [B

    .line 272
    :goto_0
    invoke-virtual {v9, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 273
    invoke-virtual {v8, p0, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p1, v8}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    .line 286
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->close()V

    goto/16 :goto_a

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v9, v8

    goto :goto_b

    :catch_4
    move-exception p0

    move-object v9, v8

    goto :goto_3

    :catch_5
    move-exception p0

    move-object v9, v8

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p1, v8

    move-object v9, p1

    goto :goto_b

    :catch_6
    move-exception p0

    move-object p1, v8

    move-object v9, p1

    .line 281
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v8, :cond_4

    .line 286
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_4

    :catch_7
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v9, :cond_5

    .line 293
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_5

    :catch_8
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz p1, :cond_8

    goto :goto_9

    :catch_9
    move-exception p0

    move-object p1, v8

    move-object v9, p1

    .line 278
    :goto_6
    :try_start_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v8, :cond_6

    .line 286
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_7

    :catch_a
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz v9, :cond_7

    .line 293
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    :catch_b
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz p1, :cond_8

    .line 299
    :goto_9
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_8
    move v0, v1

    :goto_a
    return v0

    :catchall_2
    move-exception p0

    :goto_b
    if-eqz v8, :cond_9

    .line 286
    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_c
    if-eqz v9, :cond_a

    .line 293
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_d
    if-eqz p1, :cond_b

    .line 299
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 301
    :cond_b
    throw p0
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;)V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public downgradeApexPackage()V
    .locals 3

    .line 73
    sget-object v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->installPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->apexPath:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->createSessionDowngrade()I

    move-result v0

    .line 75
    sget v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->SESSION_ID_ERROR:I

    if-eq v0, v1, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->writeSession(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 77
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->commitSession(I)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
