.class Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;
.super Landroid/view/View;
.source "ClickAreaView.java"


# instance fields
.field private blacklist mDebug:Z

.field private blacklist mId:I

.field private blacklist mMetadata:Ljava/lang/String;

.field blacklist mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mId:I

    iput-object p5, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mMetadata:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mDebug:Z

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mMetadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public blacklist setDebug(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mDebug:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->mDebug:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->invalidate()V

    :cond_0
    return-void
.end method
