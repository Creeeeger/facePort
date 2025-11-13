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
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/types/ScaleType;
    .locals 4

    sget-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->NONE:Lcom/samsung/android/sume/core/types/ScaleType;

    sget-object v1, Lcom/samsung/android/sume/core/types/ScaleType;->CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

    sget-object v2, Lcom/samsung/android/sume/core/types/ScaleType;->CENTER_CROP:Lcom/samsung/android/sume/core/types/ScaleType;

    sget-object v3, Lcom/samsung/android/sume/core/types/ScaleType;->FIT_CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sume/core/types/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->NONE:Lcom/samsung/android/sume/core/types/ScaleType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->CENTER_CROP:Lcom/samsung/android/sume/core/types/ScaleType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ScaleType;

    const-string v1, "FIT_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->FIT_CENTER:Lcom/samsung/android/sume/core/types/ScaleType;

    invoke-static {}, Lcom/samsung/android/sume/core/types/ScaleType;->$values()[Lcom/samsung/android/sume/core/types/ScaleType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->$VALUES:[Lcom/samsung/android/sume/core/types/ScaleType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ScaleType;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ScaleType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/ScaleType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/ScaleType;->$VALUES:[Lcom/samsung/android/sume/core/types/ScaleType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/ScaleType;

    return-object v0
.end method
