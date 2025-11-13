.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final context:Landroid/content/Context;

.field private final favoriteHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private final favoritePkgList:Ljava/lang/String;

.field private final mFavoriteNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator$mFavoriteNotifSectioner$1;

.field private final notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field private final sp:Landroid/content/SharedPreferences;

.field private final spName:Ljava/lang/String;

.field private final timeSortCoordnator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

.field private final visualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V
    .locals 1

    const-string v0, "FavoriteNotifCoordinator"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->visualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->timeSortCoordnator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->favoriteHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    const-string p2, "favorite_notif"

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->spName:Ljava/lang/String;

    const-string p3, "favorite_list"

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->favoritePkgList:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->sp:Landroid/content/SharedPreferences;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator$mFavoriteNotifSectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator$mFavoriteNotifSectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->mFavoriteNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator$mFavoriteNotifSectioner$1;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mInvalidateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getFavoriteHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->favoriteHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public final getFavoritePkgList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->favoritePkgList:Ljava/lang/String;

    return-object p0
.end method

.method public final getFavoriteSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->mFavoriteNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator$mFavoriteNotifSectioner$1;

    return-object p0
.end method

.method public final getNotifLiveDataStoreImpl()Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    return-object p0
.end method

.method public final getSp()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final getSpName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->spName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->timeSortCoordnator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    return-object p0
.end method

.method public final getVisualStabilityCoordinator()Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->visualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    return-object p0
.end method

.method public onUpdateNotifStack()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->visualStabilityCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;->notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->atomicValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->temporarilyAllowSectionChanges(Ljava/util/Collection;J)V

    return-void
.end method
