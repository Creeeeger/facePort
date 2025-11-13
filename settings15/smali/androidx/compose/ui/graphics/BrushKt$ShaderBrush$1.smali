.class public final Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;
.super Landroidx/compose/ui/graphics/Brush;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $shader:Landroid/graphics/Shader;

.field public createdSize:J

.field public internalShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->$shader:Landroid/graphics/Shader;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->createdSize:J

    return-void
.end method


# virtual methods
.method public final applyTo-Pq9zytI(FJLandroidx/compose/ui/graphics/AndroidPaint;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->internalShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->createdSize:J

    invoke-static {v1, v2, p2, p3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->internalShader:Landroid/graphics/Shader;

    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide p2, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->createdSize:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->$shader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->internalShader:Landroid/graphics/Shader;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;->createdSize:J

    :cond_2
    :goto_0
    iget-object p0, p4, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p2

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p4, v1, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    :cond_3
    iget-object p0, p4, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Landroid/graphics/Shader;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/AndroidPaint;->setShader(Landroid/graphics/Shader;)V

    :cond_4
    iget-object p0, p4, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p0, p2

    cmpg-float p0, p0, p1

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p4, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    :goto_1
    return-void
.end method
