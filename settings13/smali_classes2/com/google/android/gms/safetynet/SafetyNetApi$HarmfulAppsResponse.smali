.class public Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;
.super Lcom/google/android/gms/common/api/Response;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/safetynet/SafetyNetApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HarmfulAppsResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Response<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getHarmfulAppsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/HarmfulAppsData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Response;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;

    invoke-interface {p0}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;->getHarmfulAppsList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLastScanTimeMs()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Response;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;

    invoke-interface {p0}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;->getLastScanTimeMs()J

    move-result-wide v0

    return-wide v0
.end method
