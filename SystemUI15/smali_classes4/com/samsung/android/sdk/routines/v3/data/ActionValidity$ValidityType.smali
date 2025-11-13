.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

.field public static final enum DEFAULT:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

.field public static final synthetic a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->DEFAULT:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    const-string v2, "CUSTOM_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->CUSTOM_ERROR:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    return-object v0
.end method
