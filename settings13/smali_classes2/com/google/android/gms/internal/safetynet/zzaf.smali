.class public final Lcom/google/android/gms/internal/safetynet/zzaf;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/safetynet/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zze:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzaf;->zze:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    .line 1
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/safetynet/zzh;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/safetynet/zzh;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/safetynet/zzh;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/safetynet/zzh;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xba2840

    return p0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    return-object p0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.safetynet.service.START"

    return-object p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final zzp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/safetynet/zzaf;->zze:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/safetynet/zzaf;->zze:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :catch_0
    return-object v0
.end method
