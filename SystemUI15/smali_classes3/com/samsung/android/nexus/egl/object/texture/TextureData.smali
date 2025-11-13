.class public final Lcom/samsung/android/nexus/egl/object/texture/TextureData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final glId:I

.field public final glIndex:I

.field public final handle:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "glGenTextures = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    aget v1, v2, v0

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "glBindTexture handle = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v4, 0x812f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameteri"

    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    invoke-static {v3, v0, p1, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string/jumbo p1, "texImage2D"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture : release"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    aget p1, v2, v0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    const p1, 0x84c0

    add-int/2addr p2, p1

    const p1, 0x84df

    if-le p2, p1, :cond_3

    move p2, p1

    :cond_3
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    :cond_4
    :goto_1
    return-void
.end method
