.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public final fShader:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

.field public id:I

.field public isAlive:Z

.field public final vShader:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->vShader:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->fShader:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 1

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    return-void
.end method

.method public final create()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->vShader:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    iget-boolean v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->create()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->fShader:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;

    iget-boolean v2, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->create()V

    :cond_1
    iget-boolean v2, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->isAlive:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    iget v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    iget v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Shader;->id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    const v4, 0x8b82

    invoke-static {v2, v4, v1}, Landroid/opengl/GLES30;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    iget v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    invoke-static {v2}, Landroid/opengl/GLES30;->glGetProgramInfoLog(I)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glUseProgram(I)V

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->isAlive:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->isAlive:Z

    :goto_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->isAlive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->isAlive:Z

    :cond_0
    return-void
.end method
