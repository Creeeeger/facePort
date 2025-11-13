.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SaImpl"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isSamsungAccountSigned()Z
    .locals 8

    const-string v0, "SaImpl"

    const-string v1, "isSamsungAccountSigned"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;->mContext:Landroid/content/Context;

    const-string v0, "@VoiceIn: SamsungAccountUtils"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "bmne5004w6"

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {p0, v4}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "isSamsungAccountSigned: No network"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.osp.app.signin"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "Signature of App not registered with SA server"

    invoke-static {v0, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    const-string v7, "AccountManagerProvider"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    const-string v5, "getSamsungAccountId"

    invoke-static {v0, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_1
    const-string v6, "content://com.samsung.android.samsungaccount.accountmanagerprovider"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getSamsungAccountId "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    :goto_3
    if-eqz p0, :cond_4

    const-string/jumbo v1, "result_code"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "result_message"

    const-string v5, ""

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    const-string p0, "AccountManagerProvider successful"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "AccountManagerProvider could not check:"

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "SamsungAccount not signed in"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const-string p0, "SamsungAccount signed in"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string p0, "AccountManagerProvider version not supported"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v2, v4

    :goto_6
    return v2
.end method

.method public final requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    const-string v0, "SaImpl"

    const-string v1, "Request token"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->$r8$clinit:I

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->execute(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    return-void
.end method
