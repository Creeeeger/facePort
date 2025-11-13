.class final Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;->this$0:Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;->this$0:Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, v0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;->this$0:Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    iget-wide v0, v0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;->this$0:Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Size;

    iget-wide v1, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    move-result-object p0

    :goto_1
    return-object p0
.end method
