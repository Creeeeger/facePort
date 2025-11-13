.class public final Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    iget-object v2, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    iget-object v2, v2, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/high16 v3, 0x400000

    :try_start_1
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-virtual {v2, v0, p1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logValue(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
