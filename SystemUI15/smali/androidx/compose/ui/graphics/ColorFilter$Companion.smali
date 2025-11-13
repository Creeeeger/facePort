.class public final Landroidx/compose/ui/graphics/ColorFilter$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/ColorFilter$Companion;-><init>()V

    return-void
.end method

.method public static tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;J)Landroidx/compose/ui/graphics/BlendModeColorFilter;
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
