.class public final enum Lcom/samsung/android/sume/DataSet;
.super Ljava/lang/Enum;
.source "DataSet.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/DataSet;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/DataSet;

.field static final blacklist DT_CN_SHIFT:I = 0x4

.field static final blacklist DT_SET_MASK:I = 0xf

.field private static final blacklist DT_SET_MAX:I = 0x10

.field public static final enum blacklist F16:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist F32:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist F64:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist MAX:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist S16:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist S32:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist S64:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist S8:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist U16:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist U32:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist U64:Lcom/samsung/android/sume/DataSet;

.field public static final enum blacklist U8:Lcom/samsung/android/sume/DataSet;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/samsung/android/sume/DataSet;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/DataSet;->NONE:Lcom/samsung/android/sume/DataSet;

    .line 11
    new-instance v1, Lcom/samsung/android/sume/DataSet;

    const-string v3, "U8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/DataSet;->U8:Lcom/samsung/android/sume/DataSet;

    .line 12
    new-instance v3, Lcom/samsung/android/sume/DataSet;

    const-string v5, "S8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/DataSet;->S8:Lcom/samsung/android/sume/DataSet;

    .line 13
    new-instance v5, Lcom/samsung/android/sume/DataSet;

    const-string v7, "U16"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/DataSet;->U16:Lcom/samsung/android/sume/DataSet;

    .line 14
    new-instance v7, Lcom/samsung/android/sume/DataSet;

    const-string v9, "S16"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/DataSet;->S16:Lcom/samsung/android/sume/DataSet;

    .line 15
    new-instance v9, Lcom/samsung/android/sume/DataSet;

    const-string v11, "U32"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/DataSet;->U32:Lcom/samsung/android/sume/DataSet;

    .line 16
    new-instance v11, Lcom/samsung/android/sume/DataSet;

    const-string v13, "S32"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sume/DataSet;->S32:Lcom/samsung/android/sume/DataSet;

    .line 17
    new-instance v13, Lcom/samsung/android/sume/DataSet;

    const-string v15, "U64"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sume/DataSet;->U64:Lcom/samsung/android/sume/DataSet;

    .line 18
    new-instance v15, Lcom/samsung/android/sume/DataSet;

    const-string v14, "S64"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/sume/DataSet;->S64:Lcom/samsung/android/sume/DataSet;

    .line 19
    new-instance v14, Lcom/samsung/android/sume/DataSet;

    const-string v12, "F16"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/sume/DataSet;->F16:Lcom/samsung/android/sume/DataSet;

    .line 20
    new-instance v12, Lcom/samsung/android/sume/DataSet;

    const-string v10, "F32"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/sume/DataSet;->F32:Lcom/samsung/android/sume/DataSet;

    .line 21
    new-instance v10, Lcom/samsung/android/sume/DataSet;

    const-string v8, "F64"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/sume/DataSet;->F64:Lcom/samsung/android/sume/DataSet;

    .line 22
    new-instance v8, Lcom/samsung/android/sume/DataSet;

    const-string v4, "MAX"

    const/16 v6, 0xc

    const/16 v2, 0x10

    invoke-direct {v8, v4, v6, v2}, Lcom/samsung/android/sume/DataSet;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/sume/DataSet;->MAX:Lcom/samsung/android/sume/DataSet;

    .line 9
    const/16 v2, 0xd

    new-array v2, v2, [Lcom/samsung/android/sume/DataSet;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    aput-object v8, v2, v6

    sput-object v2, Lcom/samsung/android/sume/DataSet;->$VALUES:[Lcom/samsung/android/sume/DataSet;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/DataSet;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/DataSet;
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/samsung/android/sume/DataSet;->values()[Lcom/samsung/android/sume/DataSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/DataSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/DataSet$$ExternalSyntheticLambda0;-><init>(I)V

    .line 42
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/DataSet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/DataSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/DataSet;

    .line 41
    return-object v0
.end method

.method static blacklist getSetValue(Lcom/samsung/android/sume/DataSet;)I
    .locals 1
    .param p0, "set"    # Lcom/samsung/android/sume/DataSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/sume/DataSet;->getValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method static synthetic blacklist lambda$from$0(ILcom/samsung/android/sume/DataSet;)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "e"    # Lcom/samsung/android/sume/DataSet;

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/sume/DataSet;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$from$1(I)Lcom/samsung/android/sume/DataSet;
    .locals 3
    .param p0, "value"    # I

    .line 45
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid DataSet value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeType(Lcom/samsung/android/sume/DataSet;I)I
    .locals 2
    .param p0, "set"    # Lcom/samsung/android/sume/DataSet;
    .param p1, "cn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "cn"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/samsung/android/sume/DataSet;->getSetValue(Lcom/samsung/android/sume/DataSet;)I

    move-result v0

    shl-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/DataSet;
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

    .line 9
    const-class v0, Lcom/samsung/android/sume/DataSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/DataSet;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/DataSet;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/sume/DataSet;->$VALUES:[Lcom/samsung/android/sume/DataSet;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/DataSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/DataSet;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/android/sume/DataSet;->value:I

    return v0
.end method

.method public blacklist isByte()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/samsung/android/sume/DataSet;->U8:Lcom/samsung/android/sume/DataSet;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/DataSet;->S8:Lcom/samsung/android/sume/DataSet;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isFloat()Z
    .locals 1

    .line 64
    sget-object v0, Lcom/samsung/android/sume/DataSet;->F16:Lcom/samsung/android/sume/DataSet;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/DataSet;->F32:Lcom/samsung/android/sume/DataSet;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/DataSet;->F64:Lcom/samsung/android/sume/DataSet;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isInt()Z
    .locals 1

    .line 58
    sget-object v0, Lcom/samsung/android/sume/DataSet;->U32:Lcom/samsung/android/sume/DataSet;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/DataSet;->S32:Lcom/samsung/android/sume/DataSet;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isShort()Z
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/sume/DataSet;->U16:Lcom/samsung/android/sume/DataSet;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/DataSet;->S16:Lcom/samsung/android/sume/DataSet;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/DataSet;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/DataSet;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
