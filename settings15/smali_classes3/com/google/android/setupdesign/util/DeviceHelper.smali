.class public abstract Lcom/google/android/setupdesign/util/DeviceHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final GET_DEVICE_NAME_METHOD:Ljava/lang/String; = "getDeviceName"

.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;

.field public static final SUW_AUTHORITY:Ljava/lang/String; = "com.google.android.setupwizard.partner"

.field public static final TAG:Ljava/lang/String;

.field public static deviceName:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "DeviceHelper"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    sput-object v1, Lcom/google/android/setupdesign/util/DeviceHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->deviceName:Landroid/os/Bundle;

    return-void
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    sget-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->deviceName:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.google.android.setupwizard.partner"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getDeviceName"

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->deviceName:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->TAG:Ljava/lang/String;

    const-string v2, "device name unknown; return the device name as default value"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->deviceName:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/google/android/setupdesign/util/DeviceHelper;->deviceName:Landroid/os/Bundle;

    const-string v0, "getDeviceName"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    const-class v0, Lcom/google/android/setupdesign/util/Partner;

    monitor-enter v0

    :try_start_1
    sget-boolean v1, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x1c0200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Lcom/google/android/setupdesign/util/Partner;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lcom/google/android/setupdesign/util/Partner;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v6, Lcom/google/android/setupdesign/util/Partner;->partner:Lcom/google/android/setupdesign/util/Partner;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    :try_start_3
    const-string v4, "(setupdesign) Partner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_2
    sput-boolean v4, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    :cond_5
    sget-object v1, Lcom/google/android/setupdesign/util/Partner;->partner:Lcom/google/android/setupdesign/util/Partner;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_7

    :try_start_4
    iget-object v0, v1, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    const-string v2, "device_name"

    const-string/jumbo v3, "string"

    iget-object v4, v1, Lcom/google/android/setupdesign/util/Partner;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, v1, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object p0, v0

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/google/android/setupdesign/util/DeviceHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "The overlayDeviceName is null!"

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_7
    const v0, 0x7f142dfa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :goto_4
    monitor-exit v0

    throw p0
.end method
