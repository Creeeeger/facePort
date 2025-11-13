.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public final textures:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    iget v2, v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->location:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    const v2, 0x84c0

    add-int/2addr v2, v1

    invoke-static {v2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    invoke-virtual {v2}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->bind()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final create()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->create()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/TextureSet;->textures:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method
