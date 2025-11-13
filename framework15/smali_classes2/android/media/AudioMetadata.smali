.class public final Landroid/media/AudioMetadata;
.super Ljava/lang/Object;
.source "AudioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioMetadata$BaseMap;,
        Landroid/media/AudioMetadata$DataPackage;,
        Landroid/media/AudioMetadata$AutoGrowByteBuffer;,
        Landroid/media/AudioMetadata$BaseMapPackage;,
        Landroid/media/AudioMetadata$ObjectPackage;,
        Landroid/media/AudioMetadata$Format;,
        Landroid/media/AudioMetadata$Key;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

.field private static final blacklist AUDIO_METADATA_OBJ_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_BASEMAP:I = 0x6

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_DOUBLE:I = 0x4

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_FLOAT:I = 0x3

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_INT:I = 0x1

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_LONG:I = 0x2

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_NONE:I = 0x0

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_STRING:I = 0x5

.field private static final blacklist DATA_PACKAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioMetadata$DataPackage<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

.field private static final blacklist TAG:Ljava/lang/String; = "AudioMetadata"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetAUDIO_METADATA_CHARSET()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetAUDIO_METADATA_OBJ_TYPES()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_OBJ_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDATA_PACKAGES()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetOBJECT_PACKAGE()Landroid/media/AudioMetadata$ObjectPackage;
    .locals 1

    sget-object v0, Landroid/media/AudioMetadata;->OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 18

    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v4, Ljava/lang/Float;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v6, Ljava/lang/Double;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-class v8, Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-class v10, Landroid/media/AudioMetadata$BaseMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v1, v12

    move-object v3, v13

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v9, v16

    move-object/from16 v11, v17

    invoke-static/range {v0 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_OBJ_TYPES:Ljava/util/Map;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

    nop

    new-instance v3, Landroid/media/AudioMetadata$2;

    invoke-direct {v3}, Landroid/media/AudioMetadata$2;-><init>()V

    new-instance v5, Landroid/media/AudioMetadata$3;

    invoke-direct {v5}, Landroid/media/AudioMetadata$3;-><init>()V

    new-instance v7, Landroid/media/AudioMetadata$4;

    invoke-direct {v7}, Landroid/media/AudioMetadata$4;-><init>()V

    new-instance v9, Landroid/media/AudioMetadata$5;

    invoke-direct {v9}, Landroid/media/AudioMetadata$5;-><init>()V

    new-instance v11, Landroid/media/AudioMetadata$6;

    invoke-direct {v11}, Landroid/media/AudioMetadata$6;-><init>()V

    new-instance v0, Landroid/media/AudioMetadata$BaseMapPackage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioMetadata$BaseMapPackage;-><init>(Landroid/media/AudioMetadata$BaseMapPackage-IA;)V

    move-object v2, v12

    move-object v4, v13

    move-object v6, v14

    move-object v8, v15

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object v13, v0

    invoke-static/range {v2 .. v13}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    new-instance v0, Landroid/media/AudioMetadata$ObjectPackage;

    invoke-direct {v0, v1}, Landroid/media/AudioMetadata$ObjectPackage;-><init>(Landroid/media/AudioMetadata$ObjectPackage-IA;)V

    sput-object v0, Landroid/media/AudioMetadata;->OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/AudioMetadata$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/media/AudioMetadata$Key<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/media/AudioMetadata$1;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioMetadata$1;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist createMap()Landroid/media/AudioMetadataMap;
    .locals 1

    new-instance v0, Landroid/media/AudioMetadata$BaseMap;

    invoke-direct {v0}, Landroid/media/AudioMetadata$BaseMap;-><init>()V

    return-object v0
.end method

.method public static blacklist fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;
    .locals 5

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    const/4 v1, 0x0

    const-string v2, "AudioMetadata"

    if-nez v0, :cond_0

    const-string v3, "Cannot find DataPackage for BaseMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/media/AudioMetadata$DataPackage;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioMetadata$BaseMap;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "No enough data to unpack"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static blacklist toByteBuffer(Landroid/media/AudioMetadata$BaseMap;Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 4

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "AudioMetadata"

    const-string v3, "Cannot find DataPackage for BaseMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v2, Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    invoke-direct {v2}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->order(Ljava/nio/ByteOrder;)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    invoke-interface {v0, v2, p0}, Landroid/media/AudioMetadata$DataPackage;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->getRawByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v1
.end method
