.class public final enum Lcom/samsung/app/video/editor/external/DoodleCommand;
.super Ljava/lang/Enum;
.source "DoodleCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/DoodleCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/DoodleCommand;

.field public static final enum blacklist UNDO_STROKE:Lcom/samsung/app/video/editor/external/DoodleCommand;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/samsung/app/video/editor/external/DoodleCommand;

    const-string v1, "UNDO_STROKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/DoodleCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/DoodleCommand;->UNDO_STROKE:Lcom/samsung/app/video/editor/external/DoodleCommand;

    .line 3
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/app/video/editor/external/DoodleCommand;

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/app/video/editor/external/DoodleCommand;->$VALUES:[Lcom/samsung/app/video/editor/external/DoodleCommand;

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
    iput p3, p0, Lcom/samsung/app/video/editor/external/DoodleCommand;->value:I

    .line 12
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/DoodleCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/DoodleCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/DoodleCommand;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/DoodleCommand;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/DoodleCommand;->$VALUES:[Lcom/samsung/app/video/editor/external/DoodleCommand;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/DoodleCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/DoodleCommand;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleCommand;->value:I

    return v0
.end method
