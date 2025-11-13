.class public final Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->LocalSeslBasicColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    return-object p0
.end method
