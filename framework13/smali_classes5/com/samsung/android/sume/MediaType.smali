.class public final enum Lcom/samsung/android/sume/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/MediaType;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist COMPRESSED_AUDIO:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist COMPRESSED_IMAGE:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist COMPRESSED_VIDEO:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist META:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist RAW_AUDIO:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist RAW_IMAGE:Lcom/samsung/android/sume/MediaType;

.field public static final enum blacklist RAW_VIDEO:Lcom/samsung/android/sume/MediaType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/samsung/android/sume/MediaType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/MediaType;->NONE:Lcom/samsung/android/sume/MediaType;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/MediaType;

    const-string v3, "RAW_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/MediaType;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/MediaType;

    const-string v5, "RAW_AUDIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/MediaType;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/MediaType;

    const-string v7, "RAW_VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/MediaType;

    .line 11
    new-instance v7, Lcom/samsung/android/sume/MediaType;

    const-string v9, "COMPRESSED_IMAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/MediaType;

    .line 12
    new-instance v9, Lcom/samsung/android/sume/MediaType;

    const-string v11, "COMPRESSED_AUDIO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/MediaType;

    .line 13
    new-instance v11, Lcom/samsung/android/sume/MediaType;

    const-string v13, "COMPRESSED_VIDEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sume/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/MediaType;

    .line 14
    new-instance v13, Lcom/samsung/android/sume/MediaType;

    const-string v15, "META"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/android/sume/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sume/MediaType;->META:Lcom/samsung/android/sume/MediaType;

    .line 6
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/samsung/android/sume/MediaType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/samsung/android/sume/MediaType;->$VALUES:[Lcom/samsung/android/sume/MediaType;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/samsung/android/sume/MediaType;->value:I

    .line 25
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/MediaType;
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
    const-class v0, Lcom/samsung/android/sume/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/MediaType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/MediaType;->$VALUES:[Lcom/samsung/android/sume/MediaType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/MediaType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/android/sume/MediaType;->value:I

    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/MediaType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
