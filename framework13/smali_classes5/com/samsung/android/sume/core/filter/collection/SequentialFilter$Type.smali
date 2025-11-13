.class public final enum Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
.super Ljava/lang/Enum;
.source "SequentialFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

.field public static final enum blacklist CONVEYOR:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

.field public static final enum blacklist PICKER:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    const-string v1, "PICKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->PICKER:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    .line 18
    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    const-string v3, "CONVEYOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->CONVEYOR:Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    .line 16
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->$VALUES:[Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
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

    .line 16
    const-class v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->$VALUES:[Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;

    return-object v0
.end method
