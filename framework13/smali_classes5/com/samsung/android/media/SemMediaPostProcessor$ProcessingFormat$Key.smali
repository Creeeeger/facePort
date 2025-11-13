.class final enum Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
.super Ljava/lang/Enum;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist BUFFER_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist BUFFER_SIZE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist COLOR_RANGE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist COLOR_STANDARD:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist COLOR_TRANSFER:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist ELEVATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist FILTER_LEVEL:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist FILTER_NAME:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist FPS:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist HEIGHT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist INPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist OUTPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist ROTATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist STRIDE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

.field public static final enum blacklist WIDTH:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;


# instance fields
.field private final blacklist value:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetName(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->getName(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    .line 86
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v1, "WIDTH"

    const/4 v2, 0x0

    const-string/jumbo v3, "width"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->WIDTH:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 91
    new-instance v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v3, "HEIGHT"

    const/4 v4, 0x1

    const-string v5, "height"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->HEIGHT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 96
    new-instance v3, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v5, "FPS"

    const/4 v6, 0x2

    const-string v7, "fps"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FPS:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 101
    new-instance v5, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v7, "STRIDE"

    const/4 v8, 0x3

    const-string/jumbo v9, "stride"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->STRIDE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 106
    new-instance v7, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v9, "ELEVATION"

    const/4 v10, 0x4

    const-string v11, "elevation"

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->ELEVATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 111
    new-instance v9, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v11, "ROTATION"

    const/4 v12, 0x5

    const-string/jumbo v13, "rotation-degree"

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->ROTATION:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 116
    new-instance v11, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v13, "BUFFER_SIZE"

    const/4 v14, 0x6

    const-string v15, "bufferSize"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->BUFFER_SIZE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 121
    new-instance v13, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "BUFFER_FORMAT"

    const/4 v14, 0x7

    const-string v12, "bufferFormat"

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->BUFFER_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 126
    new-instance v12, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "INPUT_COLOR_FORMAT"

    const/16 v14, 0x8

    const-string v10, "input-color"

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->INPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 131
    new-instance v10, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "OUTPUT_COLOR_FORMAT"

    const/16 v14, 0x9

    const-string/jumbo v8, "output-color"

    invoke-direct {v10, v15, v14, v8}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->OUTPUT_COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 136
    new-instance v8, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "COLOR_FORMAT"

    const/16 v14, 0xa

    const-string v6, "colorFormat"

    invoke-direct {v8, v15, v14, v6}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_FORMAT:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 141
    new-instance v6, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "COLOR_RANGE"

    const/16 v14, 0xb

    const-string v4, "colorRange"

    invoke-direct {v6, v15, v14, v4}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_RANGE:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 146
    new-instance v4, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "COLOR_STANDARD"

    const/16 v14, 0xc

    const-string v2, "colorStandard"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_STANDARD:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 151
    new-instance v2, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "COLOR_TRANSFER"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "colorTransfer"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->COLOR_TRANSFER:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 156
    new-instance v4, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "FILTER_NAME"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "filterName"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FILTER_NAME:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 161
    new-instance v2, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const-string v15, "FILTER_LEVEL"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "filterLevel"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->FILTER_LEVEL:Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    .line 82
    const/16 v4, 0x10

    new-array v4, v4, [Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    const/4 v15, 0x0

    aput-object v0, v4, v15

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

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v2, v4, v14

    sput-object v4, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput-object p3, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->value:Ljava/lang/String;

    .line 189
    return-void
.end method

.method private static blacklist getName(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->values()[Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    move-result-object v0

    .line 179
    .local v0, "keys":[Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 180
    .local v3, "key":Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    iget-object v4, v3, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    return-object v3

    .line 179
    .end local v3    # "key":Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    .locals 1

    .line 82
    sget-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;->value:Ljava/lang/String;

    return-object v0
.end method
