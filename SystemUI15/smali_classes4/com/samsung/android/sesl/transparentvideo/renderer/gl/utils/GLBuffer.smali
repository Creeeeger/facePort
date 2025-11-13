.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dataBuffer:Ljava/nio/Buffer;

.field public final dataUpdater:Lkotlin/jvm/internal/Lambda;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, p1, [I

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, [I

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, [F

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, [F

    array-length v1, v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$2;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$4;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;)V

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$5;

    invoke-direct {v0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$5;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataUpdater:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method
