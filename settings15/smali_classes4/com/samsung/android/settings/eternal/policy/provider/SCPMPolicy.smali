.class public final Lcom/samsung/android/settings/eternal/policy/provider/SCPMPolicy;
.super Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getPolicyId()Ljava/lang/String;
    .locals 0

    const-string p0, "SCPMPolicy"

    return-object p0
.end method

.method public final getPolicyVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getRawPolicy()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    move-result-object v0

    const-string v1, "/eternalPolicy.json"

    iget-object v2, v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scpmInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v5, 0x0

    const-string/jumbo v6, "token"

    if-eqz v2, :cond_0

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    iget-object v7, v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    const-string v9, "ConfigurationApi"

    invoke-direct {v8, v7, v9}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string v7, "cannot get new policy : "

    iget-object v9, v8, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    const-string v10, "getData : BNR_ETERNAL_POLICY"

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getData : BNR_ETERNAL_POLICY, token : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lcom/samsung/android/scloud/lib/platform/api/LOG;->ENABLED:Z

    if-eqz v11, :cond_1

    if-eqz v10, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[SCPMLIB_1.0.0]"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-virtual {v8, v2}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_2

    const-string v2, "getLastError"

    iget-object v6, v8, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v2, v6, v11}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "rcode"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "rmsg"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    const-string v2, "getStatus"

    iget-object v6, v8, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v2, v6, v11}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v2

    :goto_2
    iget v6, v2, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->result:I

    const/4 v7, 0x2

    const-string v8, "ScpmUtils"

    if-ne v6, v7, :cond_5

    const v1, 0x263e0a1

    iget v2, v2, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    if-eq v2, v1, :cond_3

    const v1, 0x4c63aa0

    if-ne v2, v1, :cond_8

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->registerScpm()V

    goto :goto_7

    :cond_5
    :try_start_1
    iget-object v2, v2, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_6

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->copyPFDToSettingsBixby(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const-string v0, "getConfigurationFromScpm() : success get configuration."

    invoke-static {v8, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    const-string v0, "getConfigurationFromScpm() : fail get configuration."

    invoke-static {v8, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :goto_4
    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConfigurationFromScpm() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_7
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->jsonToString()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    const-string p0, "getScpmPolicy() : Fail to get policy file"

    invoke-static {v8, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-object v5
.end method
