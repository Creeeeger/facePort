.class public final enum Lcom/samsung/app/video/editor/external/ExportRecordingMode;
.super Ljava/lang/Enum;
.source "ExportRecordingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ExportRecordingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist FAST_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist HDR10:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist HDR10_PLUS:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist HYPERLAPSE_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist SLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist SUPERSLOW_MULTI_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist SUPERSLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

.field public static final enum blacklist UNSUPPORT:Lcom/samsung/app/video/editor/external/ExportRecordingMode;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v1, "UNSUPPORT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->UNSUPPORT:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 23
    new-instance v1, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 24
    new-instance v3, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v5, "HDR10"

    const/4 v6, 0x2

    const/16 v7, 0xb

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->HDR10:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 25
    new-instance v5, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v7, "HDR10_PLUS"

    const/4 v8, 0x3

    const/16 v9, 0xa

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->HDR10_PLUS:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 26
    new-instance v7, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v9, "SLOW_NORMAL"

    const/4 v10, 0x4

    const/16 v11, 0x65

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->SLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 27
    new-instance v9, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v11, "SUPERSLOW_NORMAL"

    const/4 v12, 0x5

    const/16 v13, 0x6f

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->SUPERSLOW_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 28
    new-instance v11, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v13, "HYPERLAPSE_NORMAL"

    const/4 v14, 0x6

    const/16 v15, 0x7a

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->HYPERLAPSE_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 29
    new-instance v13, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v15, "SUPERSLOW_MULTI_NORMAL"

    const/4 v14, 0x7

    const/16 v12, 0x70

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->SUPERSLOW_MULTI_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 30
    new-instance v12, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    const-string v15, "FAST_NORMAL"

    const/16 v14, 0x8

    const/16 v10, 0x79

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/app/video/editor/external/ExportRecordingMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->FAST_NORMAL:Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    .line 21
    const/16 v10, 0x9

    new-array v10, v10, [Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/ExportRecordingMode;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->value:I

    .line 40
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ExportRecordingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/ExportRecordingMode;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->$VALUES:[Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ExportRecordingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ExportRecordingMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/app/video/editor/external/ExportRecordingMode;->value:I

    return v0
.end method
