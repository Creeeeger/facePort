.class public final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/common/internal/zzr;

.field public final zzb:Ljava/util/Map;

.field public zzc:I

.field public zzd:Z

.field public zze:Landroid/os/IBinder;

.field public final zzf:Lcom/google/android/gms/common/internal/zzn;

.field public zzg:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 9

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, p1, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    const-string v2, "ConnectionStatusConfig"

    iget-object v3, v1, Lcom/google/android/gms/common/internal/zzn;->zzb:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-boolean v5, v1, Lcom/google/android/gms/common/internal/zzn;->zzf:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "serviceActionBundleKey"

    invoke-static {v5, v3}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/common/internal/zzn;->zza:Landroid/net/Uri;

    const-string/jumbo v8, "serviceIntentCall"

    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "Dynamic intent resolution failed: "

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "serviceResponseIntentKey"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Dynamic lookup for intent failed for action: "

    if-eqz v5, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    :goto_3
    move-object v1, v4

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    iget v2, v2, Lcom/google/android/gms/common/internal/zzn;->zze:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_1
    sget-object v3, Lcom/google/android/gms/common/wrappers/Wrappers;->zza:Lcom/google/android/gms/common/wrappers/Wrappers;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    const-string p1, "Attempted to bind to a service in a STOPPED package."

    const-string p2, "ConnectionTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_1
    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    invoke-virtual {p1, v1, v2, p2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    :goto_6
    move v4, p1

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    goto :goto_6

    :goto_7
    iput-boolean v4, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object p2, p2, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object p2, p1, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
