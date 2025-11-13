.class public Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;
.super Ljava/lang/Object;
.source "ContentViewFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private final blacklist mFromSystemServer:Z

.field private final blacklist mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final blacklist mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field private final blacklist mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field private final blacklist mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final blacklist mToastController:Lcom/samsung/android/globalactions/util/ToastController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogBaseView"    # Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .param p3, "featureFactory"    # Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;
    .param p4, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p5, "resourceFactory"    # Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;
    .param p6, "logWrapper"    # Lcom/samsung/android/globalactions/util/LogWrapper;
    .param p7, "handlerUtil"    # Lcom/samsung/android/globalactions/util/HandlerUtil;
    .param p8, "toastController"    # Lcom/samsung/android/globalactions/util/ToastController;
    .param p9, "presenter"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;
    .param p10, "fromSystemServer"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 36
    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 37
    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 38
    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 39
    iput-object p9, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 40
    iput-boolean p10, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mFromSystemServer:Z

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 11
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_CLEAR_COVER_CLOSED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    .local v0, "clearCoverClosed":Z
    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v9, p1

    move v10, v0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Landroid/app/Dialog;Z)V

    .line 49
    .local v1, "contentView":Lcom/samsung/android/globalactions/presentation/view/ContentView;
    return-object v1
.end method
