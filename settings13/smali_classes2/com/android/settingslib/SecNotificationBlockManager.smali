.class public Lcom/android/settingslib/SecNotificationBlockManager;
.super Ljava/lang/Object;
.source "SecNotificationBlockManager.java"


# static fields
.field private static final DEBUG:Z

.field private static mConfigCSCSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mExceptableSystemAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMetaDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AYDHrjJ0EWocoLM3Jnjj4CbEo4o(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/SecNotificationBlockManager;->lambda$isBlockablePackage$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/SecNotificationBlockManager;->DEBUG:Z

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mMetaDataMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mExceptableSystemAppSet:Ljava/util/HashSet;

    return-void
.end method

.method private static checkConfigCSC(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)I
    .locals 5

    .line 200
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0}, Lcom/android/settingslib/SecNotificationBlockManager;->initConfigCSCSet(Landroid/content/Context;)V

    .line 204
    :cond_0
    sget-object p0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "SecNotificationBlockManager"

    const/4 v1, 0x2

    if-eqz p0, :cond_2

    .line 205
    sget-boolean p0, Lcom/android/settingslib/SecNotificationBlockManager;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkConfigCSC:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const-string p0, ":"

    if-eqz p2, :cond_4

    .line 212
    sget-object v2, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    sget-boolean v2, Lcom/android/settingslib/SecNotificationBlockManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConfigCSC with channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    .line 220
    :cond_4
    sget-object p2, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkConfigCSC :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method private static checkSystemAppAndMetaData(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x4

    .line 238
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 240
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/SecNotificationBlockManager;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "checkSystemAppAndMetaData:"

    const-string v4, "SecNotificationBlockManager"

    if-nez v0, :cond_1

    .line 245
    :try_start_1
    sget-boolean p0, Lcom/android/settingslib/SecNotificationBlockManager;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":nonSystemPackage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 254
    :cond_1
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    .line 255
    sget-object p0, Lcom/android/settingslib/SecNotificationBlockManager;->mMetaDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string p0, "com.samsung.android.notification.blockable"

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 259
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mMetaDataMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_4

    goto :goto_0

    .line 261
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isExceptableSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    move v5, v2

    .line 264
    :cond_4
    sget-boolean p0, Lcom/android/settingslib/SecNotificationBlockManager;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return v5

    :cond_6
    return v2

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v2
.end method

.method public static getLockedImportance(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 125
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/android/settingslib/SecNotificationBlockManager;->initConfigCSCSet(Landroid/content/Context;)V

    .line 128
    :cond_0
    sget-object p0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, ":"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 278
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 280
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 281
    aget-object v2, p2, v1

    .line 282
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p2, 0x40

    .line 284
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 286
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static initConfigCSCSet(Landroid/content/Context;)V
    .locals 5

    .line 169
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070119

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ","

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 179
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 181
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    sget-boolean v3, Lcom/android/settingslib/SecNotificationBlockManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initConfigCSCSet:CSC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecNotificationBlockManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    sget-object v3, Lcom/android/settingslib/SecNotificationBlockManager;->mConfigCSCSet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static initExceptableSystemAppSet()V
    .locals 2

    .line 195
    sget-object v0, Lcom/android/settingslib/SecNotificationBlockManager;->mExceptableSystemAppSet:Ljava/util/HashSet;

    const-string v1, "com.samsung.android.email.provider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z
    .locals 4

    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/SecNotificationBlockManager;->checkConfigCSC(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 61
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->checkSystemAppAndMetaData(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x4

    const/4 v3, 0x1

    if-ne p0, v0, :cond_1

    return v3

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result p2

    if-eqz p2, :cond_2

    return v3

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isPermissionFixed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2
.end method

.method public static isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1040

    const/4 v2, 0x0

    .line 78
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x20

    if-le v1, v3, :cond_1

    .line 81
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticLambda0;-><init>()V

    .line 82
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/SecNotificationBlockManager;->checkConfigCSC(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return v2

    .line 93
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isPermissionFixed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 96
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->checkSystemAppAndMetaData(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockablePackage pkg :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecNotificationBlockManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method private static isExceptableSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 296
    sget-object p0, Lcom/android/settingslib/SecNotificationBlockManager;->mExceptableSystemAppSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 297
    invoke-static {}, Lcom/android/settingslib/SecNotificationBlockManager;->initExceptableSystemAppSet()V

    .line 299
    :cond_0
    sget-object p0, Lcom/android/settingslib/SecNotificationBlockManager;->mExceptableSystemAppSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPermissionFixed(Ljava/lang/String;)Z
    .locals 7

    .line 141
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SecNotificationBlockManager"

    if-nez v0, :cond_0

    const-string p0, "AppGlobals.getPermissionManager() is null"

    .line 143
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 146
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 148
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    :try_start_0
    const-string v6, "android.permission.POST_NOTIFICATIONS"

    .line 151
    invoke-interface {v0, p0, v6, v5}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLAG_PERMISSION_SYSTEM_FIXED pkg :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 162
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not reach system server :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    throw p0
.end method

.method private static synthetic lambda$isBlockablePackage$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
