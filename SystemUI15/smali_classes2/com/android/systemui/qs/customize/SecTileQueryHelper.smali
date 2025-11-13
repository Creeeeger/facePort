.class public final Lcom/android/systemui/qs/customize/SecTileQueryHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public mFinished:Z

.field public mListener:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSpecs:Landroid/util/ArraySet;

.field public mTileQueryFinished:Z

.field public final mTiles:Ljava/util/ArrayList;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    return-void
.end method


# virtual methods
.method public final addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    if-nez p4, :cond_1

    iget-object v0, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    iput-object p2, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    new-instance p2, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;-><init>(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    iget-object p3, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
