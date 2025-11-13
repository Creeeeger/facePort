.class public Lcom/android/keyguard/KeyguardSecSecurityContainer;
.super Lcom/android/keyguard/KeyguardSecurityContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final initMode(ILcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V
    .locals 1

    iget p5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    if-ne p5, p1, :cond_0

    return-void

    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Switching mode from "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "KeyguardSecSecurityContainer"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    iget-object p5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {p5}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->onDestroy()V

    const/4 p5, 0x3

    if-ne p1, p5, :cond_1

    new-instance p1, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;

    invoke-direct {p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer$ArrowViewMode;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecDefaultViewMode;

    invoke-direct {p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecDefaultViewMode;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->setupViewMode()V

    return-void
.end method

.method public final modeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p0, "ArrowView"

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setFocusForBiometrics(IZ)V

    return-void
.end method

.method public final setupViewMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    instance-of v2, v1, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    invoke-interface {v1, p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->init(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/keyguard/KeyguardSecurityViewFlipper;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setupViewMode()V

    :goto_0
    return-void
.end method

.method public final showAlmostAtWipeDialog(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f130a00

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p3, 0x7f130a01

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f130a02

    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    return-void
.end method

.method public final showDialog(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v4, 0x7f140602

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const v2, 0x104000a

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d9

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
