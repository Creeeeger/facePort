.class final enum Lcom/samsung/android/sume/nn/SumeNN$State;
.super Ljava/lang/Enum;
.source "SumeNN.java"

# interfaces
.implements Lcom/samsung/android/sume/Utils$Labelable;
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/nn/SumeNN$State;",
        ">;",
        "Lcom/samsung/android/sume/Utils$Labelable;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/nn/SumeNN$State;

.field public static final enum blacklist CONNECTED:Lcom/samsung/android/sume/nn/SumeNN$State;

.field public static final enum blacklist ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

.field public static final enum blacklist IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

.field public static final enum blacklist LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

.field public static final enum blacklist RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 275
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNN$State;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/nn/SumeNN$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    .line 276
    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$State;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/nn/SumeNN$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

    .line 277
    new-instance v3, Lcom/samsung/android/sume/nn/SumeNN$State;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/nn/SumeNN$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/nn/SumeNN$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNN$State;

    .line 278
    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$State;

    const-string v7, "IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/nn/SumeNN$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    .line 279
    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$State;

    const-string v9, "RUNNING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/nn/SumeNN$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    .line 274
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sume/nn/SumeNN$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sume/nn/SumeNN$State;->$VALUES:[Lcom/samsung/android/sume/nn/SumeNN$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/nn/SumeNN$State;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/nn/SumeNN$State;
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

    .line 274
    const-class v0, Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/SumeNN$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/nn/SumeNN$State;
    .locals 1

    .line 274
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN$State;->$VALUES:[Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/nn/SumeNN$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/nn/SumeNN$State;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN$State;->value:I

    return v0
.end method

.method public blacklist label()Ljava/lang/String;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/SumeNN$State;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/SumeNN$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/nn/SumeNN$State;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
