.class public Lcom/samsung/android/biometrics/app/setting/face/FacePreview;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FacePreview.java"


# instance fields
.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->path:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePreview;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
