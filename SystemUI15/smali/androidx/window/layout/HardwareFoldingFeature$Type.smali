.class public final Landroidx/window/layout/HardwareFoldingFeature$Type;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/window/layout/HardwareFoldingFeature$Type$Companion;

.field public static final FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

.field public static final HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/HardwareFoldingFeature$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/HardwareFoldingFeature$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->Companion:Landroidx/window/layout/HardwareFoldingFeature$Type$Companion;

    new-instance v0, Landroidx/window/layout/HardwareFoldingFeature$Type;

    const-string v1, "FOLD"

    invoke-direct {v0, v1}, Landroidx/window/layout/HardwareFoldingFeature$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

    new-instance v0, Landroidx/window/layout/HardwareFoldingFeature$Type;

    const-string v1, "HINGE"

    invoke-direct {v0, v1}, Landroidx/window/layout/HardwareFoldingFeature$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/HardwareFoldingFeature$Type;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/HardwareFoldingFeature$Type;->description:Ljava/lang/String;

    return-object p0
.end method
