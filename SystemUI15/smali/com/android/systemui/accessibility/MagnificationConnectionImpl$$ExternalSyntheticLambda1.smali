.class public final synthetic Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;II)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/ModeSwitchesController;->mSwitchSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
