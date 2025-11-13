.class public final Landroidx/compose/foundation/text/MappedKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final A:J

.field public static final Backslash:J

.field public static final Backspace:J

.field public static final C:J

.field public static final Copy:J

.field public static final Cut:J

.field public static final Delete:J

.field public static final DirectionDown:J

.field public static final DirectionLeft:J

.field public static final DirectionRight:J

.field public static final DirectionUp:J

.field public static final Enter:J

.field public static final H:J

.field public static final INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

.field public static final Insert:J

.field public static final MoveEnd:J

.field public static final MoveHome:J

.field public static final PageDown:J

.field public static final PageUp:J

.field public static final Paste:J

.field public static final Tab:J

.field public static final V:J

.field public static final X:J

.field public static final Y:J

.field public static final Z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/MappedKeys;

    invoke-direct {v0}, Landroidx/compose/foundation/text/MappedKeys;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    const/16 v0, 0x1d

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->A:J

    const/16 v0, 0x1f

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->C:J

    const/16 v0, 0x24

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->H:J

    const/16 v0, 0x32

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->V:J

    const/16 v0, 0x35

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Y:J

    const/16 v0, 0x34

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->X:J

    const/16 v0, 0x36

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    const/16 v0, 0x49

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backslash:J

    const/16 v0, 0x15

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    const/16 v0, 0x16

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    const/16 v0, 0x13

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    const/16 v0, 0x5c

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    const/16 v0, 0x5d

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    const/16 v0, 0x7a

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    const/16 v0, 0x7b

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    const/16 v0, 0x7c

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    const/16 v0, 0x42

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Enter:J

    const/16 v0, 0x43

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    const/16 v0, 0x70

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    const/16 v0, 0x117

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Paste:J

    const/16 v0, 0x115

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Cut:J

    const/16 v0, 0x116

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Copy:J

    const/16 v0, 0x3d

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Tab:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
