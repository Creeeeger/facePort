.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v0, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v1, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v3, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

    const/4 v4, 0x0

    const/16 v7, 0x38

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v0, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->panelEventReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$panelEventReceiver$1;

    const/4 v4, 0x0

    const/16 v7, 0x38

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v0, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p1, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->panelEventReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$panelEventReceiver$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
