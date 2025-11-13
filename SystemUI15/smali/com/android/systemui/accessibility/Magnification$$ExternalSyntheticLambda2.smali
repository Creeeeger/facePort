.class public final synthetic Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$3;

    iget p0, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$3;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/MagnificationSettingsController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->showSettingPanel(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification;

    iget p0, p0, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v1, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v1, v1, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v2, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v0, p0, v3, v4}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/Magnification$4;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
