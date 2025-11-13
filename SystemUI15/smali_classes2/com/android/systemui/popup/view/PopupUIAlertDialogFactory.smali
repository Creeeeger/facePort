.class public Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupUIAlertDialogFactory"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissDialog:Ljava/lang/Runnable;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mShowingDialog:Ljava/lang/Runnable;

.field private mSubscreenContext:Landroid/content/Context;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmKeyguardUpdateMonitorWrapper(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mSubscreenContext:Landroid/content/Context;

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    iput-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    iput-object p5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mSubscreenContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mSubscreenContext:Landroid/content/Context;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initializeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method public getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;

    iget-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    move-object v0, v8

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;IZLandroid/app/PendingIntent;)V

    iput-object v8, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p0
.end method

.method public getOverheatWarningDialog(Ljava/lang/String;ZZ)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    const-string v0, "SSRM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    new-instance p1, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;

    iget-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimTrayProtectionDialog(IZI)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    new-instance v6, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;IZI)V

    iput-object v6, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object v6
.end method
