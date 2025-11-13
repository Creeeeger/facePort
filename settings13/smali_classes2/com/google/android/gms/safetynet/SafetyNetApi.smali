.class public interface abstract Lcom/google/android/gms/safetynet/SafetyNetApi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResult;
    }
.end annotation


# virtual methods
.method public abstract listHarmfulApps(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
