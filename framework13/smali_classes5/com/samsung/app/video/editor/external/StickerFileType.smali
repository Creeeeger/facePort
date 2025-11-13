.class public final enum Lcom/samsung/app/video/editor/external/StickerFileType;
.super Ljava/lang/Enum;
.source "StickerFileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/StickerFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/StickerFileType;

.field public static final enum blacklist APNG:Lcom/samsung/app/video/editor/external/StickerFileType;

.field public static final enum blacklist PNG:Lcom/samsung/app/video/editor/external/StickerFileType;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/StickerFileType;

    const-string v1, "APNG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/StickerFileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/StickerFileType;->APNG:Lcom/samsung/app/video/editor/external/StickerFileType;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/StickerFileType;

    const-string v3, "PNG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/StickerFileType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/StickerFileType;->PNG:Lcom/samsung/app/video/editor/external/StickerFileType;

    .line 6
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/app/video/editor/external/StickerFileType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/app/video/editor/external/StickerFileType;->$VALUES:[Lcom/samsung/app/video/editor/external/StickerFileType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "va"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/samsung/app/video/editor/external/StickerFileType;->value:I

    .line 17
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/StickerFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/StickerFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/StickerFileType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/StickerFileType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/StickerFileType;->$VALUES:[Lcom/samsung/app/video/editor/external/StickerFileType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/StickerFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/StickerFileType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/samsung/app/video/editor/external/StickerFileType;->value:I

    return v0
.end method
