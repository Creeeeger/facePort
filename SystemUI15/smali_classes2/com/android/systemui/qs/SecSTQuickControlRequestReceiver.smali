.class public final Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final broadcastDispatcher$delegate:Lkotlin/Lazy;

.field public currentRemoteView:Landroid/widget/RemoteViews;

.field public expandedSupplier:Ljava/util/function/Supplier;

.field public final filter:Landroid/content/IntentFilter;

.field public final handler$delegate:Lkotlin/Lazy;

.field public hideBarRunnable:Ljava/lang/Runnable;

.field public isShowingSupplier:Ljava/util/function/Supplier;

.field public newRemoteView:Landroid/widget/RemoteViews;

.field public remoteViewsContainer:Landroid/widget/FrameLayout;

.field public showBarRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$broadcastDispatcher$2;->INSTANCE:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$broadcastDispatcher$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->broadcastDispatcher$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$handler$2;->INSTANCE:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$handler$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->handler$delegate:Lkotlin/Lazy;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.qs.action.ST_QUICK_CONTROL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->filter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive intent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSTQuickControlRequestReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;-><init>(Landroid/content/Intent;Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateRemoteView(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->currentRemoteView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v2, p0}, Lcom/android/systemui/util/ViewUtil;->toShortIdSting(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateRemoteView newRemoteView = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentRemoteView = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", this = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SecSTQuickControlRequestReceiver"

    invoke-static {v3, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->currentRemoteView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->remoteViewsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->remoteViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->remoteViewsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->currentRemoteView:Landroid/widget/RemoteViews;

    return-void
.end method
