.class public final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final completionListener:Ljava/lang/Runnable;

.field public final configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

.field public final loop:Z

.field public final mediaSource:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZLjava/lang/Runnable;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->loop:Z

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->completionListener:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Runnable;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;-><init>(Ljava/lang/Object;ZLjava/lang/Runnable;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    iget-object v1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->loop:Z

    iget-boolean v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->loop:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->completionListener:Ljava/lang/Runnable;

    iget-object v3, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->completionListener:Ljava/lang/Runnable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->loop:Z

    invoke-static {v1, v2, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->completionListener:Ljava/lang/Runnable;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->completionListener:Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoContext(mediaSource="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", loop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->loop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", completionListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->configs:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
