.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/renderer/gl/IGLObject;


# instance fields
.field public final buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

.field public location:I

.field public final name:Ljava/lang/String;

.field public final program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

.field public final uniformUpdater:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$UniformUpdater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->name:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    invoke-virtual {p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->getDataLength()I

    move-result p1

    instance-of p3, p4, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;I)V

    goto/16 :goto_0

    :cond_0
    instance-of p3, p4, Ljava/lang/Float;

    if-eqz p3, :cond_1

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;I)V

    goto/16 :goto_0

    :cond_1
    instance-of p3, p4, [I

    if-eqz p3, :cond_2

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_2
    instance-of p3, p4, [F

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    if-eq p1, p3, :cond_8

    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/16 p3, 0x9

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    sget-object p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x7

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x6

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x5

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x4

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_7
    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x3

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p5, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;II)V

    goto :goto_0

    :cond_9
    sget-object p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Debugger$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;I)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->uniformUpdater:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$UniformUpdater;

    invoke-virtual {p2, p4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;->check(Ljava/lang/Object;)V

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    invoke-direct {p1, p4}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->buffer:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/DataType;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->uniformUpdater:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$UniformUpdater;

    invoke-interface {p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform$UniformUpdater;->update()V

    return-void
.end method

.method public final create()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->program:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;

    iget v0, v0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Program;->id:I

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/Uniform;->location:I

    return-void
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method
