.class public final enum Lcom/samsung/app/video/editor/external/RecordingMode;
.super Ljava/lang/Enum;
.source "RecordingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/RecordingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist FAST:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist HYPERLAPSE:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SLOW:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SLOW_V2_240_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SLOW_V2_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SUPERSLOW_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SUPERSLOW_MULTI:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SUPERSLOW_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SUPERSLOW_SINGLE_960:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist SUPERSLOW_SINGLE_FRC_DEFLICKER:Lcom/samsung/app/video/editor/external/RecordingMode;

.field public static final enum blacklist UNSUPPORT:Lcom/samsung/app/video/editor/external/RecordingMode;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 18

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v1, "UNSUPPORT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->UNSUPPORT:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 9
    new-instance v3, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v5, "SLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 10
    new-instance v5, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v7, "FAST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/RecordingMode;->FAST:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 11
    new-instance v7, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v9, "HYPERLAPSE"

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/RecordingMode;->HYPERLAPSE:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 12
    new-instance v9, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v12, "SUPERSLOW_SINGLE_960"

    const/4 v13, 0x7

    invoke-direct {v9, v12, v11, v13}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_SINGLE_960:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 13
    new-instance v12, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v14, "SUPERSLOW_MULTI"

    const/4 v15, 0x6

    const/16 v11, 0x8

    invoke-direct {v12, v14, v15, v11}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_MULTI:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 14
    new-instance v14, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v15, "SUPERSLOW_SINGLE_FRC_DEFLICKER"

    const/16 v10, 0x9

    invoke-direct {v14, v15, v13, v10}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_SINGLE_FRC_DEFLICKER:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 15
    new-instance v15, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v13, "SLOW_V2"

    const/16 v8, 0xc

    invoke-direct {v15, v13, v11, v8}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 16
    new-instance v13, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v11, "SLOW_V2_120"

    const/16 v6, 0xd

    invoke-direct {v13, v11, v10, v6}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 17
    new-instance v11, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v10, "SLOW_V2_120_NONE_SVC"

    const/16 v4, 0xa

    const/16 v2, 0xf

    invoke-direct {v11, v10, v4, v2}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 18
    new-instance v10, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v4, "SUPERSLOW_NONE_SVC"

    const/16 v2, 0xb

    const/16 v6, 0x12

    invoke-direct {v10, v4, v2, v6}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 19
    new-instance v4, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v6, "SLOW_V2_240_NONE_SVC"

    const/16 v2, 0x13

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_240_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 20
    new-instance v2, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v6, "SLOW_V2_HEVC"

    const/16 v8, 0x15

    move-object/from16 v16, v4

    const/16 v4, 0xd

    invoke-direct {v2, v6, v4, v8}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 21
    new-instance v4, Lcom/samsung/app/video/editor/external/RecordingMode;

    const-string v6, "SUPERSLOW_HEVC"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x16

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/app/video/editor/external/RecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/RecordingMode;->SUPERSLOW_HEVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 6
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/samsung/app/video/editor/external/RecordingMode;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v13, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v8

    sput-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/RecordingMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/samsung/app/video/editor/external/RecordingMode;->value:I

    .line 31
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/RecordingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/RecordingMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/RecordingMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/RecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/RecordingMode;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/RecordingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/RecordingMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/app/video/editor/external/RecordingMode;->value:I

    return v0
.end method
