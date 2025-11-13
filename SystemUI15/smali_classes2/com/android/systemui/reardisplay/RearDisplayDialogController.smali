.class public final Lcom/android/systemui/reardisplay/RearDisplayDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mAnimationRepeatCount:I

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mDeviceStateManagerCallback:Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;

.field public mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

.field public mDialogViewContainer:Landroid/widget/LinearLayout;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mFoldedStates:[I

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mResources:Landroid/content/res/Resources;

.field public mServiceNotified:Z

.field public mStartedFolded:Z

.field public final mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mServiceNotified:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mAnimationRepeatCount:I

    new-instance v1, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;-><init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;I)V

    iput-object v1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDeviceStateManagerCallback:Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;

    iput-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mResources:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    return-void
.end method


# virtual methods
.method public final closeOverlayAndNotifyService(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mServiceNotified:Z

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    iget-object v1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDeviceStateManagerCallback:Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->onStateRequestOverlayDismissed(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final createDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mStartedFolded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0025

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0026

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    const v0, 0x7f0a09a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget p0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mAnimationRepeatCount:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-object p1
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->createDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showRearDisplayDialog(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mFoldedStates:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mFoldedStates:[I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mFoldedStates:[I

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mStartedFolded:Z

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    iget-object v1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDeviceStateManagerCallback:Lcom/android/systemui/reardisplay/RearDisplayDialogController$DeviceStateManagerCallback;

    iget-object v2, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    iput-boolean v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mServiceNotified:Z

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->createDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mDialogViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mStartedFolded:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;I)V

    const/4 v1, -0x1

    const v2, 0x7f130f6e

    invoke-virtual {p1, v1, v2, v0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;I)V

    const v1, 0x7f130f6d

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mRearDisplayEducationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
