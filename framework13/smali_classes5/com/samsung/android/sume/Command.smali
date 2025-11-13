.class public final enum Lcom/samsung/android/sume/Command;
.super Ljava/lang/Enum;
.source "Command.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/Command;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/Command;

.field public static final enum blacklist CREATE:Lcom/samsung/android/sume/Command;

.field public static final enum blacklist QUERY:Lcom/samsung/android/sume/Command;

.field public static final enum blacklist RELEASE:Lcom/samsung/android/sume/Command;

.field public static final enum blacklist RUN:Lcom/samsung/android/sume/Command;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/samsung/android/sume/Command;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/Command;->QUERY:Lcom/samsung/android/sume/Command;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/Command;

    const-string v4, "CREATE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/sume/Command;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/Command;->CREATE:Lcom/samsung/android/sume/Command;

    .line 9
    new-instance v4, Lcom/samsung/android/sume/Command;

    const-string v6, "RELEASE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/sume/Command;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sume/Command;->RELEASE:Lcom/samsung/android/sume/Command;

    .line 10
    new-instance v6, Lcom/samsung/android/sume/Command;

    const-string v8, "RUN"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/android/sume/Command;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/Command;->RUN:Lcom/samsung/android/sume/Command;

    .line 6
    new-array v8, v9, [Lcom/samsung/android/sume/Command;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/samsung/android/sume/Command;->$VALUES:[Lcom/samsung/android/sume/Command;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/Command;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/Command;
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

    .line 24
    const-class v0, Lcom/samsung/android/sume/Command;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Command;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/Command;
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
    const-class v0, Lcom/samsung/android/sume/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Command;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/Command;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/Command;->$VALUES:[Lcom/samsung/android/sume/Command;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/Command;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/samsung/android/sume/Command;->value:I

    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/Command;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
