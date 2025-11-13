.class public final Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisabled:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mSamsungGlobalActionsDialog:Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;

.field public final mShutdownUi:Lcom/android/systemui/globalactions/ShutdownUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/globalactions/ShutdownUi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/BlurUtils;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/globalactions/ShutdownUi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iput-object p7, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mShutdownUi:Lcom/android/systemui/globalactions/ShutdownUi;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final disable(IIIZ)V
    .locals 0

    and-int/lit8 p2, p3, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-ne p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mSamsungGlobalActionsDialog:Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsImpl;->showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;I)V

    return-void
.end method

.method public final showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mSamsungGlobalActionsDialog:Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mSamsungGlobalActionsDialog:Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mSamsungGlobalActionsDialog:Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1, p2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    return-void
.end method

.method public final showShutdownUi(ZLjava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mShutdownUi:Lcom/android/systemui/globalactions/ShutdownUi;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/systemui/scrim/ScrimDrawable;-><init>()V

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    const v3, 0x7f140608

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/globalactions/ShutdownUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/ShutdownUi;Lcom/android/systemui/scrim/ScrimDrawable;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v4, v4, 0x700

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v3, 0x7e4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    const v3, 0x10d0120

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f140016

    invoke-virtual {v2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/ShutdownUi;->getShutdownDialogContent(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    const v2, 0x7f040801

    invoke-static {v0, v2, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060166

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020015

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/globalactions/ShutdownUi;->getRebootMessage(ZLjava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/globalactions/ShutdownUi;->getReasonMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
