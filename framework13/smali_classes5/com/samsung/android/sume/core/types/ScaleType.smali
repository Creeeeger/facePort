.class public final enum Lcom/samsung/android/sume/core/types/ScaleType;
.super Ljava/lang/Enum;
.source "ScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/ScaleType;

.field public static final enum blacklist CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

.field public static final enum blacklist CENTER_CROP:Lcom/samsung/android/sume/core/types/ScaleType;

.field public static final enum blacklist FIT_CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/ScaleType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->NONE:Lcom/samsung/android/sume/core/types/ScaleType;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/types/ScaleType;->CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v5, "CENTER_CROP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/core/types/ScaleType;->CENTER_CROP:Lcom/samsung/android/sume/core/types/ScaleType;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v7, "FIT_CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/core/types/ScaleType;->FIT_CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

    .line 6
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sume/core/types/ScaleType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sume/core/types/ScaleType;->$VALUES:[Lcom/samsung/android/sume/core/types/ScaleType;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ScaleType;
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

    .line 6
    const-class v0, Lcom/samsung/android/sume/core/types/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ScaleType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/ScaleType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->$VALUES:[Lcom/samsung/android/sume/core/types/ScaleType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/ScaleType;

    return-object v0
.end method
