.class public Lcom/samsung/android/settings/activekey/ActiveKeyInfo;
.super Ljava/lang/Object;
.source "ActiveKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    }
.end annotation


# direct methods
.method public static getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 214
    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    .locals 13

    const-string v0, " / "

    const-string v1, "cannot find app name !"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "short_press_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "xcover_top_long_press_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "xcover_top_short_press_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "double_press_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "long_press_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
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

    const-string v7, "ActiveKeyInfo"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_d

    const-string v4, ""

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_5

    :cond_4
    const/16 v4, 0x2f

    const/4 v8, 0x0

    .line 102
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 103
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v4, v2

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 106
    new-instance v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    invoke-direct {v10}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;-><init>()V

    .line 107
    iput-object v3, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v11

    const-string v12, "torch/torch"

    if-eqz v11, :cond_8

    .line 110
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 111
    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_torch:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 112
    iput-boolean v2, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    return-object v10

    :cond_5
    const-string v11, "home/home"

    .line 114
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 115
    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_home:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 116
    iput-boolean v2, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    return-object v10

    :cond_6
    const-string v11, "back/back"

    .line 118
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 119
    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_back:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 120
    iput-boolean v2, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    return-object v10

    :cond_7
    const-string v11, "quickMessageSender/quickMessageSender"

    .line 122
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_quick_message_sender:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 124
    iput-boolean v2, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    return-object v10

    .line 127
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 128
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 129
    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_torch:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 130
    iput-boolean v2, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    return-object v10

    .line 138
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x200

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 142
    invoke-static {p0, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_1

    :cond_a
    move v3, v8

    :goto_1
    iput-boolean v3, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    goto :goto_2

    .line 146
    :catch_0
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_2
    if-nez v3, :cond_c

    .line 152
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x80

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 156
    invoke-static {p0, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    move v2, v8

    :goto_3
    iput-boolean v2, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v10, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 161
    :catch_1
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    return-object v10

    :cond_d
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActiveKeyDBKey(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "short_press_app"

    goto :goto_0

    :cond_0
    const-string p0, "xcover_top_long_press_app"

    goto :goto_0

    :cond_1
    const-string p0, "xcover_top_short_press_app"

    goto :goto_0

    :cond_2
    const-string p0, "double_press_app"

    goto :goto_0

    :cond_3
    const-string p0, "long_press_app"

    :goto_0
    return-object p0
.end method

.method public static getActiveKeyDBKey_Backup(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "short_press_app_backup"

    goto :goto_0

    :cond_0
    const-string p0, "xcover_top_long_press_app_backup"

    goto :goto_0

    :cond_1
    const-string p0, "xcover_top_short_press_app_backup"

    goto :goto_0

    :cond_2
    const-string p0, "double_press_app_backup"

    goto :goto_0

    :cond_3
    const-string p0, "long_press_app_backup"

    :goto_0
    return-object p0
.end method

.method protected static getPressActionState(Landroid/content/Context;I)Z
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 220
    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, ""

    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static removePressActionAndMakeBackup(Landroid/content/Context;I)V
    .locals 3

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey_Backup(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[remove] Press Type : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/ app : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActiveKeyInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static restorePressActionFromBackup(Landroid/content/Context;I)V
    .locals 2

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey_Backup(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[restore] Press Type : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/ app : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActiveKeyInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static savePressActionApp(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyDBKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[save] Press Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/ app : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActiveKeyInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 231
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    return-void
.end method

.method public static setExtraKeyCustomizationInfo(ZILjava/lang/String;)V
    .locals 11

    const/16 v0, 0x437

    const/4 v1, 0x1

    const/16 v2, 0x3f7

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq p1, v1, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v0

    :goto_0
    move v6, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :cond_3
    move v8, v2

    :goto_1
    move v6, v3

    :goto_2
    const-string p1, "ActiveKeyInfo"

    if-eqz p0, :cond_8

    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    :try_start_0
    const-string p0, "torch/torch"

    .line 279
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "home/home"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "back/back"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "quickMessageSender/quickMessageSender"

    .line 281
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v9, v4

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x0

    :cond_6
    move v9, v1

    .line 284
    :goto_4
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 285
    new-instance v10, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {v10, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_7

    .line 287
    invoke-virtual {v10, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_7
    const-string p0, "android.intent.category.LAUNCHER"

    .line 289
    invoke-virtual {v10, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10200000

    .line 290
    invoke-virtual {v10, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExtraKeyCustomizationInfo startActivity intent="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v7, 0x44f

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 294
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 301
    :cond_8
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/16 p2, 0x44f

    invoke-interface {p0, p2, v6, v8}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V

    const-string p0, "setExtraKeyCustomizationInfo removeKeyCustomizationInfo"

    .line 302
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to removeKeyCustomizationInfo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return-void
.end method
