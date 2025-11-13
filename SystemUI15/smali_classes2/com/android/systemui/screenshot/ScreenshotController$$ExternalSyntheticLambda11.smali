.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/android/systemui/screenshot/sep/SemScreenshotResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$2:Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;->f$2:Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/android/systemui/screenshot/sep/SnackbarController;

    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v5, v5, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/screenshot/sep/SnackbarController;-><init>(Landroid/content/Context;ILcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;)V

    invoke-virtual {v3, v1, p0}, Lcom/android/systemui/screenshot/sep/SnackbarController;->showScreenshotError(Landroid/view/View;Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
