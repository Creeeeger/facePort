.class public abstract Landroidx/compose/foundation/text/TextPointerIcon_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final textPointerIcon:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->pointerIconDefault:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    return-void
.end method
