.class public final enum Lcom/samsung/android/sume/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/Mode;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/Mode;

.field public static final enum blacklist BOOST:Lcom/samsung/android/sume/Mode;

.field public static final enum blacklist INSTANT:Lcom/samsung/android/sume/Mode;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/Mode;

.field public static final enum blacklist NORMAL:Lcom/samsung/android/sume/Mode;

.field public static final enum blacklist THRIFTY:Lcom/samsung/android/sume/Mode;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/samsung/android/sume/Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/Mode;->NONE:Lcom/samsung/android/sume/Mode;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/Mode;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/Mode;->NORMAL:Lcom/samsung/android/sume/Mode;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/Mode;

    const-string v5, "BOOST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/Mode;->BOOST:Lcom/samsung/android/sume/Mode;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/Mode;

    const-string v7, "THRIFTY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/Mode;->THRIFTY:Lcom/samsung/android/sume/Mode;

    .line 11
    new-instance v7, Lcom/samsung/android/sume/Mode;

    const-string v9, "INSTANT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/Mode;->INSTANT:Lcom/samsung/android/sume/Mode;

    .line 6
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sume/Mode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sume/Mode;->$VALUES:[Lcom/samsung/android/sume/Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/Mode;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/Mode;
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 26
    const-class v0, Lcom/samsung/android/sume/Mode;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Mode;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/Mode;
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
    const-class v0, Lcom/samsung/android/sume/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Mode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/Mode;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/Mode;->$VALUES:[Lcom/samsung/android/sume/Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/Mode;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/android/sume/Mode;->value:I

    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/Mode;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
