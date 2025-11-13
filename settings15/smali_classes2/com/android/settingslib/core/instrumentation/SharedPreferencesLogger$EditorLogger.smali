.class public final Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 0

    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public final commit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;

    invoke-direct {v1, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;-><init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;

    invoke-direct {v1, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;-><init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method
