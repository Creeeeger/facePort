.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method
