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

.field private final blacklist mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iput-object p9, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p10, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    iput-boolean p11, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mFromSystemServer:Z

    return-void
.end method


# virtual methods
.method public blacklist createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_CLEAR_COVER_CLOSED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v10, p1

    move v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Landroid/app/Dialog;Z)V

    return-object v1
.end method
