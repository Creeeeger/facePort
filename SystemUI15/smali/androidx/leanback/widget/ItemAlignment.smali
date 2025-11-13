.class public final Landroidx/leanback/widget/ItemAlignment;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

.field public final vertical:Landroidx/leanback/widget/ItemAlignment$Axis;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ItemAlignment$Axis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    new-instance v0, Landroidx/leanback/widget/ItemAlignment$Axis;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    return-void
.end method
