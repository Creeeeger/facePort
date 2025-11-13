.class final enum Lcom/samsung/app/video/editor/external/VEState;
.super Ljava/lang/Enum;
.source "VEState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/VEState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist EXPORT:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist INIT:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist PAUSE:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist PLAY:Lcom/samsung/app/video/editor/external/VEState;

.field public static final enum blacklist TERMINATE:Lcom/samsung/app/video/editor/external/VEState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/VEState;

    const-string v1, "LAUNCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/app/video/editor/external/VEState;->LAUNCH:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v1, Lcom/samsung/app/video/editor/external/VEState;

    const-string v3, "INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/app/video/editor/external/VEState;->INIT:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v3, Lcom/samsung/app/video/editor/external/VEState;

    const-string v5, "PLAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/app/video/editor/external/VEState;->PLAY:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v5, Lcom/samsung/app/video/editor/external/VEState;

    const-string v7, "PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/app/video/editor/external/VEState;->PAUSE:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v7, Lcom/samsung/app/video/editor/external/VEState;

    const-string v9, "EXPORT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/app/video/editor/external/VEState;->EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v9, Lcom/samsung/app/video/editor/external/VEState;

    const-string v11, "PAUSE_EXPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/app/video/editor/external/VEState;->PAUSE_EXPORT:Lcom/samsung/app/video/editor/external/VEState;

    new-instance v11, Lcom/samsung/app/video/editor/external/VEState;

    const-string v13, "TERMINATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/app/video/editor/external/VEState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/app/video/editor/external/VEState;->TERMINATE:Lcom/samsung/app/video/editor/external/VEState;

    .line 6
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/app/video/editor/external/VEState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/app/video/editor/external/VEState;->$VALUES:[Lcom/samsung/app/video/editor/external/VEState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/VEState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/VEState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/VEState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/VEState;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/VEState;->$VALUES:[Lcom/samsung/app/video/editor/external/VEState;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/VEState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/VEState;

    return-object v0
.end method
