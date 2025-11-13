.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# static fields
.field public static final Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture$Companion;


# instance fields
.field public buffer:Ljava/nio/Buffer;

.field public height:Ljava/lang/Integer;

.field public id:I

.field public isUpdated:Z

.field public location:I

.field public name:Ljava/lang/String;

.field public program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final texParams:Ljava/util/Map;

.field public final texType:I

.field public useMipmap:Z

.field public width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Ljava/lang/String;Ljava/nio/Buffer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->buffer:Ljava/nio/Buffer;

    iput-object p4, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->width:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->height:Ljava/lang/Integer;

    iput-boolean p7, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->useMipmap:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->location:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->isUpdated:Z

    if-eqz p6, :cond_0

    const p1, 0x8d65

    goto :goto_0

    :cond_0
    const/16 p1, 0xde1

    :goto_0
    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texType:I

    const/16 p1, 0x2802

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x2901

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Lkotlin/Pair;

    invoke-direct {p4, p1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x2803

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x2801

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x2601

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    new-instance p6, Lkotlin/Pair;

    invoke-direct {p6, p1, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x2800

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p5, Lkotlin/Pair;

    invoke-direct {p5, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p4, p3, p6, p5}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Ljava/lang/String;Ljava/nio/Buffer;Ljava/lang/Integer;Ljava/lang/Integer;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v9, v0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Ljava/lang/String;Ljava/nio/Buffer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    iget v2, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texType:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const v1, 0x8d65

    const/16 v3, 0x2601

    const/16 v4, 0x2800

    const/16 v5, 0x2703

    const/16 v6, 0x2801

    if-ne v2, v1, :cond_4

    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "surfaceTexture("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") has been released!"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Texture"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v2, v8, v7}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->useMipmap:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    invoke-static {v2, v6, v5}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    invoke-static {v2}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->isUpdated:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texParams:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v2, v8, v7}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->width:Ljava/lang/Integer;

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v11, v1

    goto :goto_3

    :cond_6
    move v11, v7

    :goto_3
    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->height:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v12, v1

    goto :goto_4

    :cond_7
    move v12, v7

    :goto_4
    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->buffer:Ljava/nio/Buffer;

    const/4 v13, 0x0

    const/16 v14, 0x1908

    iget v8, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texType:I

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v15, 0x1401

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-boolean v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->useMipmap:Z

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    invoke-static {v2, v6, v5}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    invoke-static {v2}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    :cond_8
    iput-boolean v7, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->isUpdated:Z

    :cond_9
    return-void
.end method

.method public final create()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->location:I

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->texType:I

    const v1, 0x8d65

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->bind()V

    return-void
.end method

.method public final dispose()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->buffer:Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->width:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->height:Ljava/lang/Integer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->isUpdated:Z

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->bind()V

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Texture;->id:I

    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method
