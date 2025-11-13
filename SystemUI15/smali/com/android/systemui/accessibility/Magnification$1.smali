.class public final Lcom/android/systemui/accessibility/Magnification$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/Magnification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/Magnification;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$1;->this$0:Lcom/android/systemui/accessibility/Magnification;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification$1;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v2, p0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v2, v0}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    iget-object p0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController;->mSwitchSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(IZ)V

    :cond_4
    :goto_1
    return-void
.end method
