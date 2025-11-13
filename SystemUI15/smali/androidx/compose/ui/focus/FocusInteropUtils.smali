.class public final Landroidx/compose/ui/focus/FocusInteropUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusInteropUtils$Companion;

.field public static final tempCoordinates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusInteropUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusInteropUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusInteropUtils;->Companion:Landroidx/compose/ui/focus/FocusInteropUtils$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/compose/ui/focus/FocusInteropUtils;->tempCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
