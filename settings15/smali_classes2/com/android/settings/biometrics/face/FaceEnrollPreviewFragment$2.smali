.class public final Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->openCamera(II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
