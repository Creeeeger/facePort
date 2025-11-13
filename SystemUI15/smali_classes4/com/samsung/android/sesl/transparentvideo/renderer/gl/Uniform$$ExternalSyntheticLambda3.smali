.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$UniformUpdater;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v2, v0}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v2, v0}, Landroid/opengl/GLES30;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glUniform1iv(IILjava/nio/IntBuffer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
