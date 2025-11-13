.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCr:Landroid/content/ContentResolver;

.field public final mHighBrightnessModeEnterRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mHighBrightnessModeEnterRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SubscreenBrightnessController"

    const-string p2, "BrightnessObserver.onChange() : HIGH_BRIGHTNESS_MODE_ENTER_URI"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mHighBrightnessModeEnterRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
