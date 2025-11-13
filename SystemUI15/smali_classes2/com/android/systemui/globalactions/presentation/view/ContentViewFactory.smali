.class public final Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mContext:Landroid/content/Context;

.field public final mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field public final mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field public final mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iput-object p10, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p11, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    return-void
.end method


# virtual methods
.method public final createContentView(Landroid/app/Dialog;)Lcom/samsung/android/globalactions/presentation/view/ContentView;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v8, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    move-object v1, v0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v8, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    move-object v1, v0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->FRONT_LARGE_COVER_DISPLAY:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v8, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v10, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v8, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v10, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v11

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iget-object v8, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v0

    move-object v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Landroid/app/Dialog;Z)V

    :goto_0
    return-object v0
.end method
