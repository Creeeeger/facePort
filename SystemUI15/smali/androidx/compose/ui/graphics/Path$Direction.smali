.class public final enum Landroidx/compose/ui/graphics/Path$Direction;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/graphics/Path$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/ui/graphics/Path$Direction;

.field public static final enum Clockwise:Landroidx/compose/ui/graphics/Path$Direction;

.field public static final enum CounterClockwise:Landroidx/compose/ui/graphics/Path$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/graphics/Path$Direction;

    const-string v1, "CounterClockwise"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/Path$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/Path$Direction;->CounterClockwise:Landroidx/compose/ui/graphics/Path$Direction;

    new-instance v1, Landroidx/compose/ui/graphics/Path$Direction;

    const-string v2, "Clockwise"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/Path$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/compose/ui/graphics/Path$Direction;->Clockwise:Landroidx/compose/ui/graphics/Path$Direction;

    filled-new-array {v0, v1}, [Landroidx/compose/ui/graphics/Path$Direction;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/Path$Direction;->$VALUES:[Landroidx/compose/ui/graphics/Path$Direction;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/graphics/Path$Direction;
    .locals 1

    const-class v0, Landroidx/compose/ui/graphics/Path$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Path$Direction;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/graphics/Path$Direction;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/Path$Direction;->$VALUES:[Landroidx/compose/ui/graphics/Path$Direction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/graphics/Path$Direction;

    return-object v0
.end method
