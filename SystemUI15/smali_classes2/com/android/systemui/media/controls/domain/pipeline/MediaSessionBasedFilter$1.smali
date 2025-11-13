.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;->$context:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v2, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->sessionListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$sessionListener$1;

    invoke-virtual {v2, v1, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->access$handleControllersChanged(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/util/List;)V

    return-void
.end method
