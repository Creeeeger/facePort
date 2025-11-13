.class public final Lcom/android/systemui/aibrief/control/BriefNowBarController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/aibrief/control/BriefNowBarController$Companion;

.field public static final NOWBAR_KEY:Ljava/lang/String; = "AI_BRIEF_KEY"

.field public static final NOWBAR_PACKAGE:Ljava/lang/String; = "com.android.systemui.aibrief"

.field public static final NOWBAR_REMOTE_VIEW_KEY:Ljava/lang/String; = "AI_BRIEF_REMOTE_VIEW_KEY"

.field public static final NOWBAR_VIEW_STYLE:I = 0x7

.field public static final SHOW_BRIEF_WITHOUT_UNLOCK:Ljava/lang/String; = "show_brief_without_unlock"

.field public static final SUGGESTION_ACTIVITY:Ljava/lang/String; = "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiContentActivity"

.field public static final SUGGESTION_ONBOARDING_ACTIVITY:Ljava/lang/String; = "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.onboarding.OnboardingActivity"

.field public static final SUGGESTION_PACKAGE:Ljava/lang/String; = "com.samsung.android.smartsuggestions"

.field public static final SUGGESTION_SPLASH_ACTIVITY:Ljava/lang/String; = "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiActivity"

.field public static final TAG:Ljava/lang/String; = "NowBarController"


# instance fields
.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final configurationListener:Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;

.field private final context:Landroid/content/Context;

.field private final faceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field private final logger:Lcom/android/systemui/aibrief/log/BriefLogger;

.field private final mainHandler:Landroid/os/Handler;

.field private needToUnlock:Z

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final nowBarCallback:Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;

.field private nowBarFullView:Landroid/view/View;

.field private nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

.field private nowBarNormalView:Landroid/view/View;

.field private nowBarRemoteExpandView:Landroid/widget/RemoteViews;

.field private nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

.field private nowBarRemoteNormalView:Landroid/widget/RemoteViews;

.field private nowBarShowing:Z

.field private final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field private remoteNowBarShowing:Z

.field private final viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/aibrief/control/BriefNowBarController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aibrief/control/BriefNowBarController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->Companion:Lcom/android/systemui/aibrief/control/BriefNowBarController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/aibrief/log/BriefLogger;Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    iput-object p3, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    iput-object p4, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->faceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iput-object p5, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p6, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p7, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p8, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {p1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    new-instance p1, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {p1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    new-instance p1, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarCallback:Lcom/android/systemui/aibrief/control/BriefNowBarController$nowBarCallback$1;

    new-instance p2, Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->configurationListener:Lcom/android/systemui/aibrief/control/BriefNowBarController$configurationListener$1;

    iget-object p3, p4, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mBriefCallbacks:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_0
    iget-object p4, p4, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mBriefCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/aibrief/control/BriefNowBarController$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/aibrief/control/BriefNowBarController$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p4, p4, p3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    check-cast p7, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p7, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final synthetic access$getFaceWidgetNotificationControllerWrapper$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->faceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/log/BriefLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getNowBarItem$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    return-object p0
.end method

.method public static final synthetic access$getNowBarRemoteItem$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    return-object p0
.end method

.method public static final synthetic access$getPowerInteractor$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/power/domain/interactor/PowerInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    return-object p0
.end method

.method public static final synthetic access$getViewController$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/ui/BriefViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    return-object p0
.end method

.method public static final synthetic access$startFullViewActivity(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->startFullViewActivity()V

    return-void
.end method

.method public static final synthetic access$updateNowBar(Lcom/android/systemui/aibrief/control/BriefNowBarController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateNowBar(Z)V

    return-void
.end method

.method public static final synthetic access$updateRemoteNowBar(Lcom/android/systemui/aibrief/control/BriefNowBarController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateRemoteNowBar(Z)V

    return-void
.end method

.method private final convertDrawableToIcon()Landroid/graphics/drawable/Icon;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->getActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method private final getActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.smartsuggestions"

    const-string v2, "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiContentActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final hideHowBarItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    const-string p2, "com.android.systemui.aibrief"

    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/aibrief/control/BriefNowBarController$hideHowBarItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController$hideHowBarItem$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final startFullViewActivity()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.smartsuggestions"

    const-string v3, "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-boolean v3, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->needToUnlock:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "fromKeyguard"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "fromNowBar"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v2, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    iget-boolean v3, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->needToUnlock:Z

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ignoreKeyguardState"

    invoke-virtual {p0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2, p0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR startFullViewActivity() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NowBarController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private final updateNowBar(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarShowing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string p1, "NowBarController"

    const-string v0, "do not updateNowBar: showing false"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getBackground(Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nowbar_key_need_to_fullview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const-string v2, "nowbar_key_linear_gradient"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f130d59

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "nowbar_key_settings_card_title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nowbar_key_app_icon"

    invoke-direct {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->convertDrawableToIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingNowbarView(Landroid/widget/RemoteViews;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingExpandView(Landroid/widget/RemoteViews;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    iget-object v1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarFullView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setContentViewForExpandCard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    iget-object v1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarNormalView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setContentViewForNormalCard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const-string v1, "AI_BRIEF_KEY"

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const-string v1, "com.android.systemui.aibrief"

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarViewStyle(I)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setExtraData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/aibrief/control/BriefNowBarController$updateNowBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$updateNowBar$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic updateNowBar$default(Lcom/android/systemui/aibrief/control/BriefNowBarController;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateNowBar(Z)V

    return-void
.end method

.method private final updateRemoteNowBar(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->remoteNowBarShowing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string p1, "NowBarController"

    const-string v0, "do not updateRemoteNowBar: showing false"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getBackground(Z)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nowbar_key_need_to_fullview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const-string v2, "nowbar_key_linear_gradient"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f130d59

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "nowbar_key_settings_card_title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nowbar_key_app_icon"

    invoke-direct {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->convertDrawableToIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setContentViewForExpandCard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setContentViewForNormalCard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    iget-object v1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteNormalView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingNowbarView(Landroid/widget/RemoteViews;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    iget-object v1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteExpandView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingExpandView(Landroid/widget/RemoteViews;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const-string v1, "AI_BRIEF_REMOTE_VIEW_KEY"

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const-string v1, "com.android.systemui.aibrief"

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarViewStyle(I)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setExtraData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/aibrief/control/BriefNowBarController$updateRemoteNowBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController$updateRemoteNowBar$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic updateRemoteNowBar$default(Lcom/android/systemui/aibrief/control/BriefNowBarController;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateRemoteNowBar(Z)V

    return-void
.end method


# virtual methods
.method public final hideNowBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const-string v1, "AI_BRIEF_KEY"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->hideHowBarItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarNormalView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarFullView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarShowing:Z

    return-void
.end method

.method public final hideRemoteNowBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteItem:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    const-string v1, "AI_BRIEF_REMOTE_VIEW_KEY"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->hideHowBarItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->remoteNowBarShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteNormalView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteExpandView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public final showNowBar(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarShowing:Z

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarNormalView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarFullView:Landroid/view/View;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateNowBar$default(Lcom/android/systemui/aibrief/control/BriefNowBarController;ZILjava/lang/Object;)V

    return-void
.end method

.method public final showNowBarRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->remoteNowBarShowing:Z

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteNormalView:Landroid/widget/RemoteViews;

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->nowBarRemoteExpandView:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateRemoteNowBar$default(Lcom/android/systemui/aibrief/control/BriefNowBarController;ZILjava/lang/Object;)V

    return-void
.end method

.method public final startCircleAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    const-string v0, "NowBarController"

    const-string/jumbo v1, "startCircleAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController$startCircleAnimation$1;-><init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateNowBarNeedToUnlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController;->needToUnlock:Z

    return-void
.end method
