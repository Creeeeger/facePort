.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->READY:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-nez p0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->seekTo()V

    :cond_0
    const-string v0, "seek(0)"

    const-string v1, "VideoRenderModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$setOnFirstDrawCapture$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$setOnFirstDrawCapture$1$1;-><init>(Ljava/util/function/Consumer;)V

    iget-object p0, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->captureBitmap(Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
