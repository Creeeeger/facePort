.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public final attributes:Ljava/util/ArrayList;

.field public vaoId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->vaoId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 0

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->vaoId:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final create()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->vaoId:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->create()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->dispose()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/AttributeSet;->vaoId:I

    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    return-void
.end method
