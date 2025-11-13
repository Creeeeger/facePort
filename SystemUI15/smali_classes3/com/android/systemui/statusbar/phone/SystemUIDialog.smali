.class public Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.super Landroid/app/AlertDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

.field public final mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public mLastConfigurationHeightDp:I

.field public mLastConfigurationWidthDp:I

.field public mLastHeight:I

.field public mLastWidth:I

.field public final mMainHandler:Landroid/os/Handler;

.field public final mOnCreateRunnables:Ljava/util/List;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f140603

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 9

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/model/SysUiState;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 9

    new-instance v8, Lcom/android/systemui/statusbar/phone/SystemUIDialog$1;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/animation/DialogTransitionAnimator;",
            "Lcom/android/systemui/statusbar/phone/DialogDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mHandler:Landroid/os/Handler;

    const/high16 p2, -0x80000000

    iput p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastWidth:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastHeight:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p3, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-direct {p1, p0, p6, p7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V

    return-void
.end method

.method public static applyFlags(Landroid/app/AlertDialog;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    const/high16 v0, 0xa0000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-void
.end method

.method public static calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getHorizontalInsets(Landroid/app/Dialog;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getDefaultDialogWidth(Landroid/app/Dialog;)I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "persist.systemui.flag_tablet_dialog_width"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x270

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I

    move-result p0

    return p0

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const/16 v0, 0x15c

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I

    move-result p0

    return p0

    :cond_1
    if-lez v1, :cond_2

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseDialog;

    if-nez v1, :cond_3

    const v1, 0x7f070ff2

    goto :goto_0

    :cond_3
    const v1, 0x7f070621

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getHorizontalInsets(Landroid/app/Dialog;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0
.end method

.method public static getHorizontalInsets(Landroid/app/Dialog;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_1
    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget p0, p0, Landroid/graphics/Insets;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static registerDismissListener(Landroid/app/Dialog;)V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    return-void
.end method

.method public static setDialogSize(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getDefaultDialogWidth(Landroid/app/Dialog;)I

    move-result p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static setShowForAllUsers(Landroid/app/Dialog;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method public static setWindowOnTop(Landroid/app/Dialog;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->getHeight(Landroid/app/Dialog;)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->getWidth(Landroid/app/Dialog;)I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->updateWindowSize()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onConfigurationChanged(Landroid/app/Dialog;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->beforeCreate(Landroid/app/Dialog;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->updateWindowSize()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->getBackAnimationSpec(Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;)Lcom/android/systemui/animation/back/BackAnimationSpec;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/DialogKt;->registerAnimationOnBackInvoked(Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/back/BackAnimationSpec;)V

    return-void
.end method

.method public final onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v3, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    :cond_0
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->setShowing(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->start()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    :cond_0
    invoke-static {p0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->setShowing(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->stop()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onWindowFocusChanged(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final sendAnnouncementEvent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    new-instance p4, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda5;

    invoke-direct {p4, p1, p3, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda5;-><init>(ILandroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final setMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onStart(Landroid/app/Dialog;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDelegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onStop(Landroid/app/Dialog;)V

    return-void
.end method

.method public final updateWindowSize()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastHeight:I

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastWidth:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastHeight:I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
