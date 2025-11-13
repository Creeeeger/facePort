.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public id:I

.field public isAlive:Z

.field public final shaderString:Ljava/lang/String;

.field public final type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->shaderString:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 0

    return-void
.end method

.method public final create()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;->VERTEX:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    if-ne v1, v0, :cond_0

    const v0, 0x8b31

    invoke-static {v0}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;->FRAGMENT:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader$TYPE;

    if-ne v1, v0, :cond_1

    const v0, 0x8b30

    invoke-static {v0}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->shaderString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    const v3, 0x8b81

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES30;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    invoke-static {v2}, Landroid/opengl/GLES30;->glGetShaderInfoLog(I)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    :cond_0
    return-void
.end method
