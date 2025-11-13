.class public Lcom/android/systemui/bixby2/SystemUICommandActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# static fields
.field private static final CAPSULE_ID:Ljava/lang/String; = "viv.systemApp"

.field private static final TAG:Ljava/lang/String; = "SystemUICommandActionHandler"


# instance fields
.field private mActionInteractors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bixby2/interactor/ActionInteractor;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public static bridge synthetic -$$Nest$misPanelBarExpanded(Lcom/android/systemui/bixby2/SystemUICommandActionHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->isPanelBarExpanded()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;Lcom/android/systemui/bixby2/interactor/ShareViaActionInteractor;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mCommandMap:Ljava/util/Map;

    const-string v0, "SystemUICommandActionHandler"

    const-string v1, "SystemUICommandActionHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p2, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p8, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p2, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput-object p0, p2, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    const-string p2, "set the action handler"

    const-string p4, "[CmdL-2.0.8]CommandSdk"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p1

    const-string/jumbo p2, "viv.systemApp"

    const-string p3, "ro.build.version.release"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    new-instance p4, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    invoke-direct {p4, p2, p3}, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;-><init>(Ljava/lang/String;I)V

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->updateSbixbyStateChange()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capsuleId cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getAvailableCommands()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mCommandMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->loadAvailableCommands()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mCommandMap:Ljava/util/Map;

    return-object p0
.end method

.method private isPanelBarExpanded()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadAvailableCommands()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mCommandMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mCommandMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bixby2/interactor/ActionInteractor;

    invoke-interface {v2}, Lcom/android/systemui/bixby2/interactor/ActionInteractor;->getSupportingActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "command"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".command"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, v3, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v3, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mCommandMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateSbixbyStateChange()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->getInstance()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;-><init>(Lcom/android/systemui/bixby2/SystemUICommandActionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAppState() IllegalArgumentException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemUICommandActionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public createStatelessCommands()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation

    const-string v0, "SystemUICommandActionHandler"

    const-string v1, "createStatelessCommands()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->getAvailableCommands()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;
    .locals 3

    const-string v0, "loadStatefulCommand(), commandId = "

    const-string v1, "SystemUICommandActionHandler"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->getAvailableCommands()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/command/Command;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/ActionInteractor;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/bixby2/interactor/ActionInteractor;->loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v2
.end method

.method public loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 3

    const-string v0, "loadStatefulCommand()(with action) commandId = "

    const-string v1, "SystemUICommandActionHandler"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->getAvailableCommands()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/command/Command;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bixby2/interactor/ActionInteractor;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/systemui/bixby2/interactor/ActionInteractor;->loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v2
.end method

.method public bridge synthetic migrateCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/action/CommandAction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performCommandAction(), commandId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUICommandActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bixby2/interactor/ActionInteractor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/bixby2/interactor/ActionInteractor;->performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method
