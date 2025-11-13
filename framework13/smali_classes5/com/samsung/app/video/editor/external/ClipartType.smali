.class public final enum Lcom/samsung/app/video/editor/external/ClipartType;
.super Ljava/lang/Enum;
.source "ClipartType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ClipartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/ClipartType;

.field public static final enum blacklist CLIP_DOODLE:Lcom/samsung/app/video/editor/external/ClipartType;

.field public static final enum blacklist CLIP_TEXT:Lcom/samsung/app/video/editor/external/ClipartType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/ClipartType;

    const-string v1, "CLIP_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/ClipartType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ClipartType;->CLIP_TEXT:Lcom/samsung/app/video/editor/external/ClipartType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/ClipartType;

    const-string v3, "CLIP_DOODLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/ClipartType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ClipartType;->CLIP_DOODLE:Lcom/samsung/app/video/editor/external/ClipartType;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/app/video/editor/external/ClipartType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/app/video/editor/external/ClipartType;->$VALUES:[Lcom/samsung/app/video/editor/external/ClipartType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/samsung/app/video/editor/external/ClipartType;->value:I

    .line 12
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ClipartType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/ClipartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/ClipartType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/ClipartType;->$VALUES:[Lcom/samsung/app/video/editor/external/ClipartType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ClipartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ClipartType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartType;->value:I

    return v0
.end method
