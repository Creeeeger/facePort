.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final MINIMUM_STATUS_UPDATE_PERIOD_MS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "NotifCounterCoordinator"


# instance fields
.field private final MAX_COUNT_UPDATE:I

.field private final MORE_COUNT_UPDATE:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mLastUpdateTime:J

.field private mMaxCount:I

.field private final mMoreCountHandler:Landroid/os/Handler;

.field private mNotifCounterPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$YhFId-aW46_pIOM3AzUvmWcS2ww(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaxCount(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->updateMaxCount()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMoreCount(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->updateMoreCount(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->MAX_COUNT_UPDATE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->MORE_COUNT_UPDATE:I

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMoreCountHandler:Landroid/os/Handler;

    const-string v1, "notification_pref"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mNotifCounterPrefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    const-string v1, "QPNS0001"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    :cond_0
    return-void
.end method

.method private onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->refreshMaxCount()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    return-void
.end method

.method private refreshMaxCount()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mLastUpdateTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    :cond_0
    return-void
.end method

.method private updateMaxCount()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mNotifCounterPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "QPNS0001"

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mMaxCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private updateMoreCount(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mNotifCounterPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantPromotion()Z

    move-result v0

    const-string v2, "QPNS0004"

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantBgActivities()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantMinimized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantOld()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mNotifCounterPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "OFF"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mInsigificantChildrenList:Ljava/util/List;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mNotifCounterPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnAfterRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;)V

    return-void
.end method
