.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
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
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->GENERAL:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const-string v2, "CUSTOM_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    const-string v3, "CUSTOM_WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->CUSTOM_WARNING:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->a:[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->a:[Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    return-object v0
.end method
