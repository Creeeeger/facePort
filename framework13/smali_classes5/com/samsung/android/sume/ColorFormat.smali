.class public final enum Lcom/samsung/android/sume/ColorFormat;
.super Ljava/lang/Enum;
.source "ColorFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/ColorFormat;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist ABGR:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist ARGB:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist BGR:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist BGRA:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist GRAYSCALE:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist NV12:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist NV21:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist OPAQUE:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist P010:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist P010_ZIPPED:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist RGB:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist RGBA:Lcom/samsung/android/sume/ColorFormat;

.field public static final enum blacklist YUV420:Lcom/samsung/android/sume/ColorFormat;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 17

    .line 7
    new-instance v0, Lcom/samsung/android/sume/ColorFormat;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/ColorFormat;->NONE:Lcom/samsung/android/sume/ColorFormat;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/ColorFormat;

    const-string v3, "OPAQUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/ColorFormat;->OPAQUE:Lcom/samsung/android/sume/ColorFormat;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/ColorFormat;

    const-string v5, "GRAYSCALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/ColorFormat;->GRAYSCALE:Lcom/samsung/android/sume/ColorFormat;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/ColorFormat;

    const-string v7, "NV12"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/ColorFormat;->NV12:Lcom/samsung/android/sume/ColorFormat;

    .line 11
    new-instance v7, Lcom/samsung/android/sume/ColorFormat;

    const-string v9, "NV21"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/ColorFormat;->NV21:Lcom/samsung/android/sume/ColorFormat;

    .line 12
    new-instance v9, Lcom/samsung/android/sume/ColorFormat;

    const-string v11, "YUV420"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/ColorFormat;->YUV420:Lcom/samsung/android/sume/ColorFormat;

    .line 13
    new-instance v11, Lcom/samsung/android/sume/ColorFormat;

    const-string v13, "P010"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sume/ColorFormat;->P010:Lcom/samsung/android/sume/ColorFormat;

    .line 14
    new-instance v13, Lcom/samsung/android/sume/ColorFormat;

    const-string v15, "P010_ZIPPED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sume/ColorFormat;->P010_ZIPPED:Lcom/samsung/android/sume/ColorFormat;

    .line 15
    new-instance v15, Lcom/samsung/android/sume/ColorFormat;

    const-string v14, "RGB"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/sume/ColorFormat;->RGB:Lcom/samsung/android/sume/ColorFormat;

    .line 16
    new-instance v14, Lcom/samsung/android/sume/ColorFormat;

    const-string v12, "RGBA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/sume/ColorFormat;->RGBA:Lcom/samsung/android/sume/ColorFormat;

    .line 17
    new-instance v12, Lcom/samsung/android/sume/ColorFormat;

    const-string v10, "ARGB"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/sume/ColorFormat;->ARGB:Lcom/samsung/android/sume/ColorFormat;

    .line 18
    new-instance v10, Lcom/samsung/android/sume/ColorFormat;

    const-string v8, "BGR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/sume/ColorFormat;->BGR:Lcom/samsung/android/sume/ColorFormat;

    .line 19
    new-instance v8, Lcom/samsung/android/sume/ColorFormat;

    const-string v6, "BGRA"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/sume/ColorFormat;->BGRA:Lcom/samsung/android/sume/ColorFormat;

    .line 20
    new-instance v6, Lcom/samsung/android/sume/ColorFormat;

    const-string v4, "ABGR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/samsung/android/sume/ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/ColorFormat;->ABGR:Lcom/samsung/android/sume/ColorFormat;

    .line 6
    const/16 v4, 0xe

    new-array v4, v4, [Lcom/samsung/android/sume/ColorFormat;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/samsung/android/sume/ColorFormat;->$VALUES:[Lcom/samsung/android/sume/ColorFormat;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/ColorFormat;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/ColorFormat;
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

    .line 34
    const-class v0, Lcom/samsung/android/sume/ColorFormat;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ColorFormat;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/ColorFormat;
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
    const-class v0, Lcom/samsung/android/sume/ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ColorFormat;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/ColorFormat;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/ColorFormat;->$VALUES:[Lcom/samsung/android/sume/ColorFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/ColorFormat;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/samsung/android/sume/ColorFormat;->value:I

    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/ColorFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/ColorFormat;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
