.class public final enum Landroidx/compose/ui/node/LayoutNode$UsageByParent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/node/LayoutNode$UsageByParent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public static final enum InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public static final enum InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public static final enum NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-string v1, "InMeasureBlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    new-instance v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-string v2, "InLayoutBlock"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    new-instance v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-string v3, "NotUsed"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/node/LayoutNode$UsageByParent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    filled-new-array {v0, v1, v2}, [Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->$VALUES:[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    const-class v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->$VALUES:[Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object v0
.end method
