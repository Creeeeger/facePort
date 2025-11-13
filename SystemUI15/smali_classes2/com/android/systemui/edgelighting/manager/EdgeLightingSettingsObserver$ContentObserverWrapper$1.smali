.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$observer:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

.field public final synthetic val$selfChange:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;->val$observer:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;->val$observer:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;->onChange()V

    return-void
.end method
