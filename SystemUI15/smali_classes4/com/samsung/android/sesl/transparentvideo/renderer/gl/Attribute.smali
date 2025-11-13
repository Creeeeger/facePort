.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public final buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

.field public location:I

.field public final name:Ljava/lang/String;

.field public final program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

.field public final type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

.field public vboId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->name:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->location:I

    invoke-virtual {p2, p4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->check(Ljava/lang/Object;)V

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    invoke-direct {p1, p4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->location:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->getDataLength()I

    move-result v2

    sget-object v3, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/16 v1, 0x1404

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1406

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->location:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public final create()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->location:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    sget-object p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    iget v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Attribute:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist in current program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Attribute"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->vboId:I

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->vboId:I

    const v2, 0x8892

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object v3, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget-object v1, v1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    const v4, 0x88e4

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget v5, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->location:I

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->type:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->getDataLength()I

    move-result v6

    sget-object v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-ne v1, v0, :cond_1

    const/16 v0, 0x1404

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x1406

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->location:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public final dispose()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Attribute;->vboId:I

    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method
