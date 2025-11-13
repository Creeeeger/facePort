.class public final Landroidx/compose/foundation/MarqueeDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/MarqueeDefaults;

.field public static final Iterations:I

.field public static final RepeatDelayMillis:I

.field public static final Spacing:Landroidx/compose/foundation/MarqueeSpacing$Companion$$ExternalSyntheticLambda0;

.field public static final Velocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/MarqueeDefaults;

    invoke-direct {v0}, Landroidx/compose/foundation/MarqueeDefaults;-><init>()V

    sput-object v0, Landroidx/compose/foundation/MarqueeDefaults;->INSTANCE:Landroidx/compose/foundation/MarqueeDefaults;

    const/4 v0, 0x3

    sput v0, Landroidx/compose/foundation/MarqueeDefaults;->Iterations:I

    const/16 v0, 0x4b0

    sput v0, Landroidx/compose/foundation/MarqueeDefaults;->RepeatDelayMillis:I

    sget-object v0, Landroidx/compose/foundation/MarqueeSpacing;->Companion:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/foundation/MarqueeSpacing$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/foundation/MarqueeSpacing$Companion$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/compose/foundation/MarqueeDefaults;->Spacing:Landroidx/compose/foundation/MarqueeSpacing$Companion$$ExternalSyntheticLambda0;

    const/16 v0, 0x1e

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/foundation/MarqueeDefaults;->Velocity:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
