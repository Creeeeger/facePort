.class public final enum Landroidx/room/ObservedTableStates$ObserveOp;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/room/ObservedTableStates$ObserveOp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/room/ObservedTableStates$ObserveOp",
        "",
        "Landroidx/room/ObservedTableStates$ObserveOp;",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/room/ObservedTableStates$ObserveOp;

.field public static final enum ADD:Landroidx/room/ObservedTableStates$ObserveOp;

.field public static final enum NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

.field public static final enum REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/room/ObservedTableStates$ObserveOp;

    const-string v1, "NO_OP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    new-instance v1, Landroidx/room/ObservedTableStates$ObserveOp;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    new-instance v2, Landroidx/room/ObservedTableStates$ObserveOp;

    const-string v3, "REMOVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    filled-new-array {v0, v1, v2}, [Landroidx/room/ObservedTableStates$ObserveOp;

    move-result-object v0

    sput-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->$VALUES:[Landroidx/room/ObservedTableStates$ObserveOp;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 1

    const-class v0, Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/ObservedTableStates$ObserveOp;

    return-object p0
.end method

.method public static values()[Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 1

    sget-object v0, Landroidx/room/ObservedTableStates$ObserveOp;->$VALUES:[Landroidx/room/ObservedTableStates$ObserveOp;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/ObservedTableStates$ObserveOp;

    return-object v0
.end method
