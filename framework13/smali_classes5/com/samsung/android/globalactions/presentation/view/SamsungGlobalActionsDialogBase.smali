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


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentView(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceFactory"    # Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->DEFAULT_DIM_AMOUNT:F

    .line 52
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToken:Landroid/os/IBinder;

    .line 68
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResources:Landroid/content/res/Resources;

    .line 73
    nop

    .line 74
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    .line 78
    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 79
    iput-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    .line 81
    nop

    .line 82
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 83
    return-void
.end method

.method private blacklist awakenIfNecessary()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_1

    .line 98
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist prepareWindow()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 148
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 152
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResources:Landroid/content/res/Resources;

    const v3, 0x10405a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 157
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 160
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 161
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 162
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    const/16 v3, 0x11

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 167
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 169
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    const/16 v2, 0x96b

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 174
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onPrepareWindow()V

    .line 177
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 178
    .local v2, "systemUIflags":I
    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    .line 179
    or-int/lit16 v2, v2, 0x200

    .line 180
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;

    .line 183
    .local v4, "decorator":Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;
    invoke-interface {v4, v0}, Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;->onDecorateWindow(Landroid/view/Window;)V

    .line 184
    .end local v4    # "decorator":Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;
    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method private blacklist setRotationSuggestionsEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 189
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    .line 190
    .local v0, "userId":I
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    .line 191
    .local v1, "what":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "userId":I
    .end local v1    # "what":I
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "re":Landroid/os/RemoteException;
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

    .line 194
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 196
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist addWindowDecorator(Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowDecorationStrategies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public blacklist cancelConfirming()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->hideConfirm()V

    .line 255
    return-void
.end method

.method protected blacklist createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;->createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dismiss()V
    .locals 2

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    .line 222
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/HandlerUtil;->post(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public blacklist dismissWithAnimation()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->dismiss()V

    .line 240
    return-void
.end method

.method public blacklist forceRequestLayout()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->forceRequestLayout()V

    .line 260
    return-void
.end method

.method public blacklist getCoverSecureConfirmState()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    return v0
.end method

.method public blacklist getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object v0
.end method

.method public blacklist hideDialogOnSecureConfirm()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->hideDialogOnSecureConfirm()V

    .line 250
    return-void
.end method

.method synthetic blacklist lambda$dismiss$2$com-samsung-android-globalactions-presentation-view-SamsungGlobalActionsDialogBase()V
    .locals 3

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->setRotationSuggestionsEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsDialogBase"

    const-string v2, "dismiss()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    .line 231
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->onDismiss()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onDismiss()V

    .line 234
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$show$0$com-samsung-android-globalactions-presentation-view-SamsungGlobalActionsDialogBase(ZZZI)V
    .locals 1
    .param p1, "keyguardShowing"    # Z
    .param p2, "deviceProvisioned"    # Z
    .param p3, "fromSystemServer"    # Z
    .param p4, "sideKeyType"    # I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onStart(ZZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->showDialog()V

    .line 113
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$showDialog$1$com-samsung-android-globalactions-presentation-view-SamsungGlobalActionsDialogBase(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyDataSetChanged()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->notifyDataSetChanged()V

    .line 265
    return-void
.end method

.method public blacklist setCoverSecureConfirmState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mCoverSecureConfirmState:Z

    .line 211
    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 93
    return-void
.end method

.method public blacklist show(ZZZI)V
    .locals 8
    .param p1, "keyguardShowing"    # Z
    .param p2, "deviceProvisioned"    # Z
    .param p3, "fromSystemServer"    # Z
    .param p4, "sideKeyType"    # I

    .line 108
    iput-boolean p3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFromSystemServer:Z

    .line 109
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v7, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;ZZZI)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/globalactions/util/HandlerUtil;->post(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public blacklist showActionConfirming(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 1
    .param p1, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 245
    return-void
.end method

.method protected blacklist showDialog()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsDialogBase"

    const-string/jumbo v2, "showDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->awakenIfNecessary()V

    .line 124
    iget v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$ActionsDialog;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->setRotationSuggestionsEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->initDimens()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->initLayouts()V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->prepareWindow()V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->updateViewList()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->initAnimations()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->registerRotationWatcher()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->setInterceptor()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->show()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onShowDialog()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 144
    return-void
.end method

.method public blacklist updateViewList()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentView:Lcom/samsung/android/globalactions/presentation/view/ContentView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ContentView;->updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    .line 201
    return-void
.end method
