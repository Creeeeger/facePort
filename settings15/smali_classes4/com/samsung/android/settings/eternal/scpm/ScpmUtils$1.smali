.class public final Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$1;->this$0:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "ScpmUtils"

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$1;->this$0:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mScpm:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    const-string v3, "com.samsung.android.app.settings.bixby"

    const-string v4, "FAIL : Update fails - error code : "

    const-string/jumbo v5, "registerAppToScpm() : token is null = {rcode : "

    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->registration:Lcom/samsung/android/scloud/lib/platform/api/Registration;

    invoke-virtual {v8, v6}, Lcom/samsung/android/scloud/lib/platform/api/Registration;->register(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v6

    iget-object v8, v6, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->token:Ljava/lang/String;

    iput-object v8, v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mToken:Ljava/lang/String;

    if-nez v8, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} {rmsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "token"

    iget-object v6, v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "scpmInfo"

    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v2, v2, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    new-instance v5, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;

    iget-object v6, v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mToken:Ljava/lang/String;

    invoke-direct {v5, v3, v1}, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->initialize(Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v1

    iget v2, v1, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->result:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "SUCCESS : initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "DO_NOTHING : There is no newly updated configuration, so it does not need to operate."

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerAppToScpm() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$1;->this$0:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getDefaultFile() : mkDir error "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v2, "eternalPolicy.json"

    invoke-static {v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "getDefaultFile() : file cretaed eternalPolicy.json"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_5
    const-string v1, "getDefaultFile() : check eternalPolicy.json"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$2;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$2;-><init>(Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultFile() : ERROR CREATING FILE - eternalPolicy.json  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "getDefaultFile()"

    invoke-static {v2, v0, p0}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p0, "getDefaultFile() : file already exist - eternalPolicy.json"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
