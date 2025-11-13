.class public final enum Lcom/samsung/android/sume/core/types/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/types/MediaType$Rank;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/MediaType;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

.field public static final blacklist AUDIO:I = 0x2

.field public static final enum blacklist COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final blacklist IMAGE:I = 0x1

.field public static final enum blacklist META:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist SCALA:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final blacklist VIDEO:I = 0x3


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 13
    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v3, "RAW_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 14
    new-instance v3, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v5, "RAW_AUDIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 15
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v7, "RAW_VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 16
    new-instance v7, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v9, "COMPRESSED_IMAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 17
    new-instance v9, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v11, "COMPRESSED_AUDIO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 18
    new-instance v11, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v13, "COMPRESSED_VIDEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 19
    new-instance v13, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v15, "META"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    .line 20
    new-instance v15, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v14, "SCALA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    .line 11
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/sume/core/types/MediaType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/samsung/android/sume/core/types/MediaType;->$VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    .line 31
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/MediaType;
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

    .line 11
    const-class v0, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/MediaType;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->$VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method


# virtual methods
.method public blacklist getRank()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 52
    :cond_2
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    return v0
.end method

.method public blacklist getValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    return v0
.end method

.method public blacklist isAudio()Z
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

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

.method public blacklist isImage()Z
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

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

.method public blacklist isMetaData()Z
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isScala()Z
    .locals 1

    .line 37
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVideo()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

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

.method public blacklist stringfy()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
