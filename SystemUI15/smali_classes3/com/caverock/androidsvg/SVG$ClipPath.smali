.class public final Lcom/caverock/androidsvg/SVG$ClipPath;
.super Lcom/caverock/androidsvg/SVG$Group;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# instance fields
.field public clipPathUnitsAreUser:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "clipPath"

    return-object p0
.end method
