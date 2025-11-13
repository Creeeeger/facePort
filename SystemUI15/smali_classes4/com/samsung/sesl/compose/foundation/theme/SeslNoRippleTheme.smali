.class public final Lcom/samsung/sesl/compose/foundation/theme/SeslNoRippleTheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/material/ripple/RippleTheme;


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslNoRippleTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/compose/foundation/theme/SeslNoRippleTheme;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/theme/SeslNoRippleTheme;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslNoRippleTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslNoRippleTheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final defaultColor-WaAFU9c(Landroidx/compose/runtime/Composer;)J
    .locals 2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p0, 0x7ed7b4f8

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide v0
.end method

.method public final rippleAlpha(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/ripple/RippleAlpha;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p0, -0x496bd7ad

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Landroidx/compose/material/ripple/RippleAlpha;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
