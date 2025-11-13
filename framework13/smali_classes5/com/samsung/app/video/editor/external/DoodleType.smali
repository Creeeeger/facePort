.class public final enum Lcom/samsung/app/video/editor/external/DoodleType;
.super Ljava/lang/Enum;
.source "DoodleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/DoodleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/DoodleType;

.field public static final enum blacklist DOODLE_EDIT:Lcom/samsung/app/video/editor/external/DoodleType;

.field public static final enum blacklist DOODLE_LIVE:Lcom/samsung/app/video/editor/external/DoodleType;

.field public static final enum blacklist DOODLE_STATIC:Lcom/samsung/app/video/editor/external/DoodleType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/DoodleType;

    const-string v1, "DOODLE_LIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/DoodleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_LIVE:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/DoodleType;

    const-string v3, "DOODLE_STATIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/DoodleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_STATIC:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 6
    new-instance v3, Lcom/samsung/app/video/editor/external/DoodleType;

    const-string v5, "DOODLE_EDIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/app/video/editor/external/DoodleType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_EDIT:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/app/video/editor/external/DoodleType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/app/video/editor/external/DoodleType;->$VALUES:[Lcom/samsung/app/video/editor/external/DoodleType;

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

    .line 12
    iput p3, p0, Lcom/samsung/app/video/editor/external/DoodleType;->value:I

    .line 13
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/DoodleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/DoodleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/DoodleType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/DoodleType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/DoodleType;->$VALUES:[Lcom/samsung/app/video/editor/external/DoodleType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/DoodleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/DoodleType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleType;->value:I

    return v0
.end method
