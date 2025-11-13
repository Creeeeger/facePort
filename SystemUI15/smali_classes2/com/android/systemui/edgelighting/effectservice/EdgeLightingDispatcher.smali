.class public final Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultLighting:Z

.field public mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

.field public mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

.field public mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

.field public mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V

    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-direct {v1, p1, v0, v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V

    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const-string v3, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    if-le v3, v0, :cond_0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-direct {p2, p1, v1, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p3, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-direct {p3, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    :goto_2
    return-void
.end method


# virtual methods
.method public final getWindow()Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final refreshBackground()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchRefresh"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    invoke-static {v3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v3, "update"

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;

    :try_start_0
    const-string v2, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$IEdgeLIghtingEffectCallback"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;-><init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->setOnEventListener(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;)V

    return-void
.end method

.method public final registerSettingChangeListener()V
    .locals 3

    const-string v0, "edge_lighting_style_type_str"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;-><init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final setForceSettingValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    :goto_1
    return-void
.end method

.method public final showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStart(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    return-void
.end method

.method public final startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_3

    iget-boolean p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    const p0, 0x7f0a0380

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->makeEffectType(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.android.systemui.edgelighting.start"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "EdgeLightingDialog"

    const-string/jumbo p1, "send broadcast : com.android.systemui.edgelighting.start"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStart(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    return-void
.end method

.method public final stopEdgeEffect()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->stopEdgeEffect()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    return-void
.end method

.method public final stopPreview()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->stopPreview()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    return-void
.end method

.method public final unRegisterEdgeWindowCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->setOnEventListener(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    return-void
.end method

.method public final updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object p1, p1, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v2, "update"

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateSetting(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "preload/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "preload/noframe"

    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    const-string/jumbo v0, "updateSetting:forceValue="

    const-string v1, ",mDefaultLighting="

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",mPackageName=null,mClassName=null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "EdgeLightingDispatcher"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
