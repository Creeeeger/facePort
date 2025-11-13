.class public final enum Lcom/samsung/android/media/SemMediaPostProcessor$Type;
.super Ljava/lang/Enum;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SemMediaPostProcessor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$Type;

.field public static final enum blacklist DEFLICKER:Lcom/samsung/android/media/SemMediaPostProcessor$Type;

.field public static final enum blacklist FILTER:Lcom/samsung/android/media/SemMediaPostProcessor$Type;

.field public static final enum blacklist FRC:Lcom/samsung/android/media/SemMediaPostProcessor$Type;


# instance fields
.field private blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 400
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    const-string v1, "DEFLICKER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPostProcessor$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->DEFLICKER:Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    .line 405
    new-instance v1, Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    const-string v4, "FRC"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/media/SemMediaPostProcessor$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->FRC:Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    .line 410
    new-instance v4, Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    const-string v7, "FILTER"

    const/4 v8, 0x6

    invoke-direct {v4, v7, v3, v8}, Lcom/samsung/android/media/SemMediaPostProcessor$Type;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->FILTER:Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    .line 396
    new-array v6, v6, [Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    sput-object v6, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 422
    iput p3, p0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->value:I

    .line 423
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 396
    const-class v0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/SemMediaPostProcessor$Type;
    .locals 1

    .line 396
    sget-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SemMediaPostProcessor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SemMediaPostProcessor$Type;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->value:I

    return v0
.end method
