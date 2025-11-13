.class public final synthetic Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSTileInstanceManager;Landroid/util/ArrayMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    iput p3, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v2, :cond_0

    new-instance p0, Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    :cond_1
    :goto_0
    return-void
.end method
