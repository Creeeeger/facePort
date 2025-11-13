.class public Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$Valid;,
        Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
    }
.end annotation


# instance fields
.field public final type:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

.field public final validityCode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->GENERAL:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-lt p2, v1, :cond_0

    const v0, 0xffffff

    if-le p2, v0, :cond_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionValidity: Out of range of custom code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RoutineSDK"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    .line 10
    iput p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;ILcom/samsung/android/sdk/routines/v3/data/ConditionValidity$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;I)V

    return-void
.end method
