.class public final enum Lcom/samsung/app/video/editor/external/PreviewFrameType;
.super Ljava/lang/Enum;
.source "PreviewFrameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum blacklist DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum blacklist DETAILED_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum blacklist IFRAME_ONLY:Lcom/samsung/app/video/editor/external/PreviewFrameType;

.field public static final enum blacklist IFRAME_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const-string v1, "DETAILED_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const-string v3, "IFRAME_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/PreviewFrameType;->IFRAME_ONLY:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 9
    new-instance v3, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const-string v5, "DETAILED_PATCH"

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 10
    new-instance v5, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const-string v8, "IFRAME_PATCH"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v5, v8, v9, v10}, Lcom/samsung/app/video/editor/external/PreviewFrameType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/PreviewFrameType;->IFRAME_PATCH:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    .line 6
    new-array v7, v7, [Lcom/samsung/app/video/editor/external/PreviewFrameType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Lcom/samsung/app/video/editor/external/PreviewFrameType;->$VALUES:[Lcom/samsung/app/video/editor/external/PreviewFrameType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->value:I

    .line 17
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/PreviewFrameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/PreviewFrameType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->$VALUES:[Lcom/samsung/app/video/editor/external/PreviewFrameType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/PreviewFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/PreviewFrameType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/app/video/editor/external/PreviewFrameType;->value:I

    return v0
.end method
