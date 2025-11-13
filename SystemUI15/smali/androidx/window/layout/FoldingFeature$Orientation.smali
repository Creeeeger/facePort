.class public final Landroidx/window/layout/FoldingFeature$Orientation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

.field public static final VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/FoldingFeature$Orientation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/FoldingFeature$Orientation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/window/layout/FoldingFeature$Orientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1}, Landroidx/window/layout/FoldingFeature$Orientation;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    new-instance v0, Landroidx/window/layout/FoldingFeature$Orientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1}, Landroidx/window/layout/FoldingFeature$Orientation;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/FoldingFeature$Orientation;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/FoldingFeature$Orientation;->description:Ljava/lang/String;

    return-object p0
.end method
