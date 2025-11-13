.class public Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;
.super Ljava/lang/Object;
.source "FunctionKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;
    }
.end annotation


# direct methods
.method public static getFunctionKeyApp(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 136
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;->getFunctionKeyDBKey(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFunctionKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;
    .locals 13

    const-string v0, " / "

    const-string v1, "cannot find app name !"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "function_key_config_shortpress_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "function_key_config_doublepress_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "function_key_config_longpress_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Press Type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/ app : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "FunctionKeyInfo"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/16 v4, 0x2f

    const/4 v8, 0x0

    .line 68
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 69
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v4, v2

    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;

    invoke-direct {v10}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;-><init>()V

    .line 73
    iput-object v3, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mDB:Ljava/lang/String;

    .line 76
    sget v11, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v12, 0x1afa4

    if-lt v11, v12, :cond_3

    const-string v11, "torch/torch"

    .line 77
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportFlashlight(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_torch:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 79
    iput-boolean v2, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mIsEnabled:Z

    return-object v10

    .line 87
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x200

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 91
    invoke-static {p0, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v8

    :goto_1
    iput-boolean v3, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mIsEnabled:Z

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mIsEnabled:Z

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    goto :goto_2

    .line 95
    :catch_0
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_2
    if-nez v3, :cond_6

    .line 101
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x80

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 105
    invoke-static {p0, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v8

    :goto_3
    iput-boolean v2, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mIsEnabled:Z

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v10, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo$FunctionKeyAppInfo;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 110
    :catch_1
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-object v10
.end method

.method public static getFunctionKeyDBKey(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "function_key_config_shortpress_value"

    goto :goto_0

    :cond_0
    const-string p0, "function_key_config_doublepress_value"

    goto :goto_0

    :cond_1
    const-string p0, "function_key_config_longpress_value"

    :goto_0
    return-object p0
.end method

.method protected static savePressActionApp(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;->getFunctionKeyDBKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 142
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[save] Press Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/ app : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FunctionKeyInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
