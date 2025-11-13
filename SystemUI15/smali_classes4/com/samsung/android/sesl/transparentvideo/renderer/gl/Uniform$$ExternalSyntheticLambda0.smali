.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$UniformUpdater;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast p0, Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES30;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast p0, Ljava/nio/IntBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES30;->glUniform1iv(IILjava/nio/IntBuffer;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast p0, Ljava/nio/IntBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES30;->glUniform1iv(IILjava/nio/IntBuffer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
