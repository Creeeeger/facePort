.class public final synthetic Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/Magnification$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/Magnification$4;III)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iput p2, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iget v1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$2:I

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getMagnificationWindowSizeFromIndex(I)I

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v2, v2, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setWindowSizeAndCenter(IFFI)V

    iput p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mPreviousMagnificationSize:I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iget v1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda2;->f$2:I

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v2, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v2, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p0, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v2, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v2, v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {v2, v4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0, v1, p0}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onChangeMagnificationMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "WindowMagnificationConnectionImpl"

    const-string v1, "Failed to inform changing magnification mode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
