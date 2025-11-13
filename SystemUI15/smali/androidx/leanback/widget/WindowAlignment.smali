.class public final Landroidx/leanback/widget/WindowAlignment;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

.field public mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

.field public mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

.field public final vertical:Landroidx/leanback/widget/WindowAlignment$Axis;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/WindowAlignment$Axis;

    const-string/jumbo v1, "vertical"

    invoke-direct {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    new-instance v1, Landroidx/leanback/widget/WindowAlignment$Axis;

    const-string v2, "horizontal"

    invoke-direct {v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput-object v1, p0, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput-object v0, p0, Landroidx/leanback/widget/WindowAlignment;->mSecondAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "horizontal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; vertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
