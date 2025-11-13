.class public final Lcom/android/systemui/communal/CommunalBackupRestoreStartable;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final logger:Lcom/android/systemui/log/core/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/CommunalBackupRestoreStartable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "CommunalBackupRestoreStartable"

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->logger:Lcom/android/systemui/log/core/Logger;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->logger:Lcom/android/systemui/log/core/Logger;

    const-string p2, "On app widget host restored, but intent is null"

    invoke-static {p0, p2, v0, p1, v0}, Lcom/android/systemui/log/core/Logger;->w$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "hostId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x74

    if-eq v1, v3, :cond_2

    return-void

    :cond_2
    const-string v1, "appWidgetOldIds"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    array-length v3, v1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    array-length p1, v1

    array-length v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, p1, :cond_4

    aget v3, v1, v2

    aget v4, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->restoreWidgets(Ljava/util/Map;)V

    return-void

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->logger:Lcom/android/systemui/log/core/Logger;

    const-string v1, "On app widget host restored, but old to new ids mapping is invalid"

    invoke-static {p2, v1, v0, p1, v0}, Lcom/android/systemui/log/core/Logger;->w$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->abortRestoreWidgets()V

    return-void
.end method

.method public final start()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/communal/CommunalBackupRestoreStartable;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v1, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3c

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method
