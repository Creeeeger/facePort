.class public Lcom/samsung/android/settings/voiceinput/SamsungAccountUtils;
.super Ljava/lang/Object;
.source "SamsungAccountUtils.java"


# direct methods
.method public static getSamsungAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "@VoiceIn: SamsungAccountUtils"

    const-string v1, "getSamsungAccountId"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.samsung.android.samsungaccount.accountmanagerprovider"

    .line 82
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSamsungAccountId "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    const/4 p1, 0x1

    const-string v1, "result_code"

    .line 88
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "result_message"

    const-string v2, ""

    .line 89
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p0, "AccountManagerProvider successful"

    .line 91
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountManagerProvider could not check:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v2
.end method

.method public static isSamsungAccountSigned(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "@VoiceIn: SamsungAccountUtils"

    const-string v1, "isSamsungAccountSigned"

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 39
    invoke-static {p0, v1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {p0, v3}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "isSamsungAccountSigned: No network"

    .line 70
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.osp.app.signin"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "Signature of App not registered with SA server"

    .line 44
    invoke-static {v0, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 49
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    const-string v5, "AccountManagerProvider"

    .line 51
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    const-string v2, "bmne5004w6"

    .line 56
    invoke-static {p0, v2}, Lcom/samsung/android/settings/voiceinput/SamsungAccountUtils;->getSamsungAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "SamsungAccount not signed in"

    .line 59
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const-string p0, "SamsungAccount signed in"

    .line 63
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const-string p0, "AccountManagerProvider version not supported"

    .line 67
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v3
.end method
