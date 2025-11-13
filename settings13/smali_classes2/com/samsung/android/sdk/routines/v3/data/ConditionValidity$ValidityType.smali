.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

.field public static final enum CUSTOM_WARNING:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

.field public static final enum GENERAL:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

.field public static final synthetic a:[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->GENERAL:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const-string v3, "CUSTOM_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    .line 3
    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const-string v5, "CUSTOM_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_WARNING:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->a:[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->a:[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    return-object v0
.end method
