.class public abstract Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.super Ljava/lang/Object;
.source "SamsungGlobalActionsDialogBase.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SamsungGlobalActionsDialogBase"


# instance fields
.field protected final blacklist DEFAULT_DIM_AMOUNT:F

.field protected blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private blacklist mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

.field protected blacklist mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mCoverSecureConfirmState:Z

.field protected blacklist mDialog:Landroid/app/Dialog;

.field protected blacklist mDialogStyle:I

.field protected final blacklist mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected blacklist mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field protected blacklist mFromSystemServer:Z

.field protected blacklist mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field protected blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field protected blacklist mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field protected blacklist mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field protected final blacklist mResources:Landroid/content/res/Resources;

.field protected blacklist mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected blacklist mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field protected blacklist mToken:Landroid/os/IBinder;

.field private blacklist mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

.field private blacklist mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field protected blacklist mWindowDecorationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;


# direct methods
.method public static synthetic blacklist $r8$lambda$MNeY4aHqkOPMLqGl-gCVH4PHxgE(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;ZZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->lambda$show$0(ZZZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TDXDqJLfBBFVUw_Pib96bruCQHQ(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->lambda$showDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iPxGKqBb66TVzUZ2qWqQxSzxmdU(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->lambda$dismiss$2()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->DEFAULT_DIM_AMOUNT:F

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResources:Landroid/content/res/Resources;

    nop

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    nop

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private blacklist awakenIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$dismiss$2()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->setRotationSuggestionsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsDialogBase"

    const-string v2, "dismiss()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->onDismiss()V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onDismiss()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$show$0(ZZZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onStart(ZZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->showDialog()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$showDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method private blacklist prepareWindow()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x10405ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v4, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_SF_EFFECT:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v4, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v4, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_2
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x11

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x96b

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onPrepareWindow()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;

    invoke-interface {v4, v0}, Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;->onDecorateWindow(Landroid/view/Window;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private blacklist setRotationSuggestionsEnabled(Z)V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured while setRotationSuggestionsEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungGlobalActionsDialogBase"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist addWindowDecorator(Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist cancelConfirming()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->hideConfirm()V

    return-void
.end method

.method protected blacklist createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;->createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/HandlerUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist dismissWithAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->dismiss()V

    :cond_0
    return-void
.end method

.method public blacklist forceRequestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->forceRequestLayout()V

    return-void
.end method

.method public blacklist getCoverSecureConfirmState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    return v0
.end method

.method public blacklist getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object v0
.end method

.method public blacklist hideDialogOnSecureConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->hideDialogOnSecureConfirm()V

    return-void
.end method

.method public blacklist notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->notifyDataSetChanged()V

    return-void
.end method

.method public blacklist setCoverSecureConfirmState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public blacklist show(ZZZI)V
    .locals 8

    iput-boolean p3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFromSystemServer:Z

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v7, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;ZZZI)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/globalactions/util/HandlerUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist showActionConfirming(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method

.method protected blacklist showDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsDialogBase"

    const-string v2, "showDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->awakenIfNecessary()V

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->setRotationSuggestionsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->initDimens()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->initLayouts()V

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->prepareWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->updateViewList()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->initAnimations()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->registerRotationWatcher()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->setInterceptor()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->show()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onShowDialog()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public blacklist updateViewList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    return-void
.end method
