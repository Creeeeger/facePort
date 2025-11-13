.class public final Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallbackReceiver:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;

.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;

.field public mMode:Ljava/lang/String;

.field public final mPackages:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;-><init>(Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;)V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mCallbackReceiver:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mListener:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;

    const-string/jumbo p1, "none"

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mMode:Ljava/lang/String;

    return-void
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPackageName() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkInstaller"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final notifyToListenerIfNeeded()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyToListenerIfNeeded() finish : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkInstaller"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mMode:Ljava/lang/String;

    const-string v1, "install"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mListener:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;->installFinish()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;->uninstallFinish()V

    :goto_0
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mCallbackReceiver:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final updateInstallResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->notifyToListenerIfNeeded()V

    const-string v0, "exception"

    if-eq p2, v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mContext:Landroid/content/Context;

    const-string p2, "language_pack_delta_update"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "language_pack_delta_update_fail_list"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x5f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method
