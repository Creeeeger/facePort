.class public final Lcom/android/systemui/aibrief/AiBriefManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/aibrief/AiBriefManager;


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/aibrief/AiBriefManagerImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "BriefManager"


# instance fields
.field private final faceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field private final gsonBuilder:Lcom/google/gson/Gson;

.field private final logger:Lcom/android/systemui/aibrief/log/BriefLogger;

.field private final notificationController:Lcom/android/systemui/aibrief/control/BriefNotificationController;

.field private final nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

.field private final viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/aibrief/AiBriefManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aibrief/AiBriefManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->Companion:Lcom/android/systemui/aibrief/AiBriefManagerImpl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/aibrief/log/BriefLogger;Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/android/systemui/aibrief/control/BriefNowBarController;Lcom/android/systemui/aibrief/control/BriefNotificationController;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    iput-object p2, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    iput-object p3, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    iput-object p4, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->notificationController:Lcom/android/systemui/aibrief/control/BriefNotificationController;

    iput-object p5, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->faceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->gsonBuilder:Lcom/google/gson/Gson;

    const-string p0, "BriefManager"

    const-string p2, "init"

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final conventBundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "conventBundleToJson() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BriefViewController"

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final convertToNowBarData(Landroid/os/Bundle;)Lcom/android/systemui/aibrief/data/NowBarData;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->conventBundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->gsonBuilder:Lcom/google/gson/Gson;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/android/systemui/aibrief/data/NowBarData;

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/aibrief/data/NowBarData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final showNowBarRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string v2, "showNowBarRemoteView"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->showNowBarRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public createNowBar(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->convertToNowBarData(Landroid/os/Bundle;)Lcom/android/systemui/aibrief/data/NowBarData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->createBriefNowBarView(Lcom/android/systemui/aibrief/data/NowBarData;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-virtual {v0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->createFullView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->showNowBar(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public createRemoteNowBar(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->createNormalRemoteView(Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->viewController:Lcom/android/systemui/aibrief/ui/BriefViewController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->createExpandRemoteView(Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->showNowBarRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public findSportsScoreRemoteViews(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->faceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->findNowBarItems(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNowBarItem "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetNotificationControllerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    :cond_1
    return-object v0
.end method

.method public hideNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string v2, "hideNotification"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->notificationController:Lcom/android/systemui/aibrief/control/BriefNotificationController;

    invoke-virtual {p0}, Lcom/android/systemui/aibrief/control/BriefNotificationController;->hideNotification()V

    return-void
.end method

.method public hideNowBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string v2, "hideNowBar"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-virtual {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->hideNowBar()V

    return-void
.end method

.method public hideRemoteNowBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string v2, "hideRemoteNowBar"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-virtual {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->hideRemoteNowBar()V

    return-void
.end method

.method public showNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string v2, "showNotification"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->notificationController:Lcom/android/systemui/aibrief/control/BriefNotificationController;

    invoke-virtual {p0}, Lcom/android/systemui/aibrief/control/BriefNotificationController;->showNotification()V

    return-void
.end method

.method public showNowBar(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string v2, "showNowBar"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->showNowBar(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public showReport()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v0, "BriefManager"

    const-string v1, "showReport"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNowBarNeedToUnlock(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefManager"

    const-string/jumbo v2, "updateNowBarNeedToUnlock"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/AiBriefManagerImpl;->nowBarController:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    const-string v0, "needToUnlock"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->updateNowBarNeedToUnlock(Z)V

    return-void
.end method
