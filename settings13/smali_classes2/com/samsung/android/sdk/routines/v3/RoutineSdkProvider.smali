.class public final Lcom/samsung/android/sdk/routines/v3/RoutineSdkProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getInstance()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->getInstance()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;

    move-result-object v0

    return-object v0
.end method
