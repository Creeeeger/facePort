.class public final Lcom/google/android/gms/common/api/internal/zacr;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/signin/internal/zak;

.field public final synthetic zab:Lcom/google/android/gms/common/api/internal/zact;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacr;->zab:Lcom/google/android/gms/common/api/internal/zact;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/signin/internal/zak;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zab:Lcom/google/android/gms/common/api/internal/zact;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/signin/internal/zak;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zak;->zab:Lcom/google/android/gms/common/ConnectionResult;

    iget v2, v1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zak;->zac:Lcom/google/android/gms/common/internal/zav;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iget v2, v1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v2, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    sget v2, Lcom/google/android/gms/common/internal/AccountAccessor;->$r8$clinit:I

    const-string v2, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/gms/common/internal/IAccountAccessor;

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/internal/zzv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/internal/zzv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/util/Set;

    iget-boolean v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    if-eqz v3, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v3, "Received null response from onSignInSuccess"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "SignInCoordinator"

    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    goto :goto_4

    :cond_5
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_6
    :goto_3
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :goto_4
    return-void
.end method
