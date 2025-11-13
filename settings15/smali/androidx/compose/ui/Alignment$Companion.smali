.class public final Landroidx/compose/ui/Alignment$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

.field public static final Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final BottomCenter:Landroidx/compose/ui/BiasAlignment;

.field public static final BottomEnd:Landroidx/compose/ui/BiasAlignment;

.field public static final BottomStart:Landroidx/compose/ui/BiasAlignment;

.field public static final Center:Landroidx/compose/ui/BiasAlignment;

.field public static final CenterEnd:Landroidx/compose/ui/BiasAlignment;

.field public static final CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public static final CenterStart:Landroidx/compose/ui/BiasAlignment;

.field public static final CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final End:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public static final Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public static final Top:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final TopCenter:Landroidx/compose/ui/BiasAlignment;

.field public static final TopEnd:Landroidx/compose/ui/BiasAlignment;

.field public static final TopStart:Landroidx/compose/ui/BiasAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v3, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    return-void
.end method
