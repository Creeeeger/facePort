.class public Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;
.super Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;
.source "TopLevelRemoteSupportPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;
    }
.end annotation


# static fields
.field private static final INTENT_NAME:Ljava/lang/String; = "install_complete"

.field protected static final PREFERENCE_KEY:Ljava/lang/String; = "top_level_remote_support"

.field private static final REMOTE_SUPPORT_LOCATION:Ljava/lang/String; = "/system/hidden/SmartTutor_SEP.apk"

.field private static final SMART_TUTOR_PACKAGE_NAME:Ljava/lang/String; = "com.rsupport.rs.activity.rsupport.aas2"

.field private static final TAG:Ljava/lang/String; = "TopLevelRemoteSupportPreferenceController"


# instance fields
.field private mPackageInstallerSessionId:I

.field final mSmartTutorPkgLocation:Ljava/lang/String;

.field final mSmartTutorPkgName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$_cAZsCJq8401mZ08Jg3GcmXeb1M(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->lambda$handlePreferenceTreeClick$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPackageInstallerSessionId(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mPackageInstallerSessionId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchRemoteSupportPackage(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->launchRemoteSupportPackage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mPackageInstallerSessionId:I

    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SMARTTUTOR_PACKAGES_NAME"

    const-string v0, "com.rsupport.rs.activity.rsupport.aas2"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgName:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SMARTTUTOR_PACKAGES_PATH"

    const-string v0, "/system/hidden/SmartTutor_SEP.apk"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgLocation:Ljava/lang/String;

    return-void
.end method

.method private addApkToInstallSession(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "package"

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, p2

    .line 163
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 164
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x4000

    :try_start_2
    new-array p1, p1, [B

    .line 167
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    .line 168
    invoke-virtual {p2, p1, p0, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 176
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_3
    move-object v0, p2

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v1, v0

    :goto_4
    move-object v0, p2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v1, v0

    .line 171
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_2

    .line 176
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    .line 183
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    return p0

    :catchall_3
    move-exception p0

    :goto_8
    if-eqz v0, :cond_4

    .line 176
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    .line 183
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :cond_5
    :goto_a
    throw p0
.end method

.method private createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 1

    .line 153
    new-instance p0, Landroid/content/Intent;

    const-string v0, "install_complete"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x2000000

    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handlePreferenceTreeClick$0()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->startInstall()V

    return-void
.end method

.method private launchRemoteSupportPackage()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appName"

    const-string v3, "Settings"

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportMenuSmartTutor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportTips(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 103
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 63
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgLocation:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_installing_applications:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    new-instance p1, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 75
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "samsungapps://ProductDetail/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?form=popup&source=TIPS_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x4000020

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->launchRemoteSupportPackage()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 94
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public startInstall()V
    .locals 6

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 115
    iget v2, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mPackageInstallerSessionId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "TopLevelRemoteSupportPreferenceController"

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 116
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "already installing. reqeust ignored"

    .line 118
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    iput v4, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mPackageInstallerSessionId:I

    .line 124
    :cond_1
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mPackageInstallerSessionId:I

    if-ne v2, v4, :cond_2

    const-string p0, "Cannot create packageInstaller session"

    .line 129
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mSmartTutorPkgLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->addApkToInstallSession(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;-><init>(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener-IA;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "install_complete"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->mPackageInstallerSessionId:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->createIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_4

    .line 145
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 147
    :cond_4
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 148
    throw p0

    :catch_2
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t install package"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
