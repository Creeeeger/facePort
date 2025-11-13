.class public abstract Lcom/google/android/gms/safetynet/SafetyNet;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final SafetyNetApi:Lcom/google/android/gms/internal/safetynet/zzae;

.field public static final zzb:Lcom/google/android/gms/safetynet/zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    new-instance v1, Lcom/google/android/gms/safetynet/zzk;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "SafetyNet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzae;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->SafetyNetApi:Lcom/google/android/gms/internal/safetynet/zzae;

    return-void
.end method
