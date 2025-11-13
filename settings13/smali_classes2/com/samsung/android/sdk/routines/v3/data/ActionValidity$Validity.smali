.class public final enum Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Validity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

.field public static final enum NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

.field public static final enum NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

.field public static final enum VALID:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

.field public static final synthetic a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const-string v1, "VALID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->VALID:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const-string v4, "INVALID_PARAMETER"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    .line 3
    new-instance v4, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const-string v5, "NOT_AVAILABLE"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    .line 4
    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const-string v7, "NOT_SUPPORTED"

    const/4 v8, 0x3

    const/4 v9, -0x3

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->a:[Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    return-object v0
.end method
