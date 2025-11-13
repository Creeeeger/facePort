.class public final enum Lcom/samsung/android/sume/core/types/SplitType;
.super Ljava/lang/Enum;
.source "SplitType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/SplitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/SplitType;

.field public static final enum blacklist ALPHA:Lcom/samsung/android/sume/core/types/SplitType;

.field public static final enum blacklist CHANNELS:Lcom/samsung/android/sume/core/types/SplitType;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/SplitType;

.field public static final enum blacklist PLANES:Lcom/samsung/android/sume/core/types/SplitType;

.field public static final enum blacklist TILE:Lcom/samsung/android/sume/core/types/SplitType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lcom/samsung/android/sume/core/types/SplitType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/SplitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/SplitType;->NONE:Lcom/samsung/android/sume/core/types/SplitType;

    .line 5
    new-instance v1, Lcom/samsung/android/sume/core/types/SplitType;

    const-string v3, "CHANNELS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/types/SplitType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/types/SplitType;->CHANNELS:Lcom/samsung/android/sume/core/types/SplitType;

    .line 6
    new-instance v3, Lcom/samsung/android/sume/core/types/SplitType;

    const-string v5, "PLANES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/core/types/SplitType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/core/types/SplitType;->PLANES:Lcom/samsung/android/sume/core/types/SplitType;

    .line 7
    new-instance v5, Lcom/samsung/android/sume/core/types/SplitType;

    const-string v7, "ALPHA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/core/types/SplitType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/core/types/SplitType;->ALPHA:Lcom/samsung/android/sume/core/types/SplitType;

    .line 8
    new-instance v7, Lcom/samsung/android/sume/core/types/SplitType;

    const-string v9, "TILE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sume/core/types/SplitType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sume/core/types/SplitType;->TILE:Lcom/samsung/android/sume/core/types/SplitType;

    .line 3
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sume/core/types/SplitType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sume/core/types/SplitType;->$VALUES:[Lcom/samsung/android/sume/core/types/SplitType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/SplitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/samsung/android/sume/core/types/SplitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/SplitType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/sume/core/types/SplitType;->$VALUES:[Lcom/samsung/android/sume/core/types/SplitType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/SplitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method
