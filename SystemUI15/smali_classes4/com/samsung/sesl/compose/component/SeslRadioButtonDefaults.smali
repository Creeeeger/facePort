.class public final Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;

.field public static final radioButtonSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;

    const/16 v0, 0x20

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/samsung/sesl/compose/component/SeslRadioButtonDefaults;->radioButtonSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
