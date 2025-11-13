.class public final enum Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType",
        "",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

.field public static final enum Clip:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

.field public static final enum ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

.field public static final enum ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

.field public static final enum Visible:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const-string v1, "Visible"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Visible:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const-string v2, "Clip"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Clip:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    new-instance v2, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const-string v3, "ExpandIndicator"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    new-instance v3, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const-string v4, "ExpandOrCollapseIndicator"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->$VALUES:[Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;
    .locals 1

    const-class v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->$VALUES:[Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    return-object v0
.end method
