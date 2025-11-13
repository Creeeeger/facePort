.class public final enum Lcom/samsung/app/video/editor/external/ThumbnailType;
.super Ljava/lang/Enum;
.source "ThumbnailType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/ThumbnailType;

.field public static final enum blacklist DETAILED:Lcom/samsung/app/video/editor/external/ThumbnailType;

.field public static final enum blacklist IFRAME_ONLY:Lcom/samsung/app/video/editor/external/ThumbnailType;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/ThumbnailType;

    const-string v1, "DETAILED"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/ThumbnailType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ThumbnailType;->DETAILED:Lcom/samsung/app/video/editor/external/ThumbnailType;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/ThumbnailType;

    const-string v4, "IFRAME_ONLY"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/app/video/editor/external/ThumbnailType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ThumbnailType;->IFRAME_ONLY:Lcom/samsung/app/video/editor/external/ThumbnailType;

    .line 6
    new-array v3, v3, [Lcom/samsung/app/video/editor/external/ThumbnailType;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    sput-object v3, Lcom/samsung/app/video/editor/external/ThumbnailType;->$VALUES:[Lcom/samsung/app/video/editor/external/ThumbnailType;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/samsung/app/video/editor/external/ThumbnailType;->value:I

    .line 14
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ThumbnailType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/ThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ThumbnailType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/ThumbnailType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/ThumbnailType;->$VALUES:[Lcom/samsung/app/video/editor/external/ThumbnailType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ThumbnailType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/app/video/editor/external/ThumbnailType;->value:I

    return v0
.end method
