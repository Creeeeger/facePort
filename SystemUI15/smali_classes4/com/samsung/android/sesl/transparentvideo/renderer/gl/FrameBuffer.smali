.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public colorAttachment:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

.field public frameBufferId:I

.field public height:I

.field public sizeUpdated:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->updateColorAttachmentIfNeeded()V

    const v0, 0x8d40

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->frameBufferId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->width:I

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->height:I

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES30;->glViewport(IIII)V

    return-void
.end method

.method public final create()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->frameBufferId:I

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->updateColorAttachmentIfNeeded()V

    return-void
.end method

.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->colorAttachment:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->colorAttachment:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->frameBufferId:I

    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final updateColorAttachmentIfNeeded()V
    .locals 14

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->sizeUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->colorAttachment:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->dispose()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->frameBufferId:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture$Companion;

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->width:I

    iget v3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->height:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Ljava/lang/String;Ljava/nio/Buffer;Ljava/lang/Integer;Ljava/lang/Integer;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->create()V

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->bind()V

    iget v2, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    const v3, 0x8ce0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v2, v5}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->colorAttachment:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;

    invoke-static {v1}, Landroid/opengl/GLES30;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_1

    const-string p0, "Framebuffer is not complete error: "

    const-string v1, "FrameBuffer"

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/FrameBuffer;->sizeUpdated:Z

    :cond_2
    :goto_0
    return-void
.end method
