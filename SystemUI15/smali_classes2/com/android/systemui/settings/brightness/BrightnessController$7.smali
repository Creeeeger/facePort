.class public final Lcom/android/systemui/settings/brightness/BrightnessController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    const/4 v2, 0x0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v1, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessController;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v3, p1, :cond_6

    iput-boolean p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$5;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V

    goto :goto_1

    :cond_4
    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V

    goto :goto_1

    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->-$$Nest$mupdateSlider(Lcom/android/systemui/settings/brightness/BrightnessController;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return v1

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iput-boolean v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    throw p1
.end method
