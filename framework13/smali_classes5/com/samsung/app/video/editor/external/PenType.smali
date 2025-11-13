.class public final enum Lcom/samsung/app/video/editor/external/PenType;
.super Ljava/lang/Enum;
.source "PenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/PenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_AUTO:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_CALLIGRAPHY:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_ERASOR:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_GLOW:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_HIGHLIGHT:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_MOSAIC:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_NORMAL:Lcom/samsung/app/video/editor/external/PenType;

.field public static final enum blacklist PEN_PATTERN:Lcom/samsung/app/video/editor/external/PenType;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/PenType;

    const-string v1, "PEN_NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/PenType;->PEN_NORMAL:Lcom/samsung/app/video/editor/external/PenType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/PenType;

    const-string v4, "PEN_CALLIGRAPHY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/PenType;->PEN_CALLIGRAPHY:Lcom/samsung/app/video/editor/external/PenType;

    .line 6
    new-instance v4, Lcom/samsung/app/video/editor/external/PenType;

    const-string v6, "PEN_GLOW"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/PenType;->PEN_GLOW:Lcom/samsung/app/video/editor/external/PenType;

    .line 7
    new-instance v6, Lcom/samsung/app/video/editor/external/PenType;

    const-string v8, "PEN_HIGHLIGHT"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/PenType;->PEN_HIGHLIGHT:Lcom/samsung/app/video/editor/external/PenType;

    .line 8
    new-instance v8, Lcom/samsung/app/video/editor/external/PenType;

    const-string v10, "PEN_ERASOR"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/PenType;->PEN_ERASOR:Lcom/samsung/app/video/editor/external/PenType;

    .line 9
    new-instance v10, Lcom/samsung/app/video/editor/external/PenType;

    const-string v12, "PEN_PATTERN"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/app/video/editor/external/PenType;->PEN_PATTERN:Lcom/samsung/app/video/editor/external/PenType;

    .line 10
    new-instance v12, Lcom/samsung/app/video/editor/external/PenType;

    const-string v14, "PEN_AUTO"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/app/video/editor/external/PenType;->PEN_AUTO:Lcom/samsung/app/video/editor/external/PenType;

    .line 11
    new-instance v14, Lcom/samsung/app/video/editor/external/PenType;

    const-string v13, "PEN_MOSAIC"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/samsung/app/video/editor/external/PenType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/app/video/editor/external/PenType;->PEN_MOSAIC:Lcom/samsung/app/video/editor/external/PenType;

    .line 3
    new-array v11, v11, [Lcom/samsung/app/video/editor/external/PenType;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lcom/samsung/app/video/editor/external/PenType;->$VALUES:[Lcom/samsung/app/video/editor/external/PenType;

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

    .line 15
    iput p3, p0, Lcom/samsung/app/video/editor/external/PenType;->value:I

    .line 16
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/PenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/PenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/PenType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/PenType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/PenType;->$VALUES:[Lcom/samsung/app/video/editor/external/PenType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/PenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/PenType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/app/video/editor/external/PenType;->value:I

    return v0
.end method
