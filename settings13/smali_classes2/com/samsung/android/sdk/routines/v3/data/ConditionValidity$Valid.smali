.class public Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$Valid;
.super Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Valid"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->GENERAL:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;ILcom/samsung/android/sdk/routines/v3/data/ConditionValidity$1;)V

    return-void
.end method
