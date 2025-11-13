.class public final Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor$addCallback$2;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;->intentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "package"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method
