.class public final Lcom/google/android/gms/safetynet/SafetyNet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SafetyNetApi:Lcom/google/android/gms/safetynet/SafetyNetApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/safetynet/zzaf;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/safetynet/zzaf;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/safetynet/zzag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/safetynet/zzk;

    invoke-direct {v1}, Lcom/google/android/gms/safetynet/zzk;-><init>()V

    sput-object v1, Lcom/google/android/gms/safetynet/SafetyNet;->zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "SafetyNet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/safetynet/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->SafetyNetApi:Lcom/google/android/gms/safetynet/SafetyNetApi;

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/safetynet/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->zzc:Lcom/google/android/gms/internal/safetynet/zzag;

    return-void
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/safetynet/SafetyNetClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/safetynet/SafetyNetClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
