.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;->mProxyConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v2, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;)V

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/appclips/ScreenshotHardwareBufferInternal;

    iget-object v1, v0, Lcom/android/systemui/screenshot/appclips/ScreenshotHardwareBufferInternal;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iget-object v2, v0, Lcom/android/systemui/screenshot/appclips/ScreenshotHardwareBufferInternal;->mParcelableColorSpace:Landroid/graphics/ParcelableColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ParcelableColorSpace;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/ScreenshotHardwareBufferInternal;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
