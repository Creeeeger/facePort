.class public final Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;
.super Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;

    invoke-direct {v0}, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;-><init>()V

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Closed"

    return-object p0
.end method
