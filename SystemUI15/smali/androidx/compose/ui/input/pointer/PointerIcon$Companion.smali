.class public final Landroidx/compose/ui/input/pointer/PointerIcon$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

.field public static final Default:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

.field public static final Hand:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->$$INSTANCE:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconDefault:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->Default:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconHand:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->Hand:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
