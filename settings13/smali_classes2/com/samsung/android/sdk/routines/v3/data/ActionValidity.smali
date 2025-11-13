.class public Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Default;,
        Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;,
        Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
    }
.end annotation


# instance fields
.field public final customReasonCode:I

.field public final type:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

.field public final validity:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->DEFAULT:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->validity:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->customReasonCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;)V

    return-void
.end method
