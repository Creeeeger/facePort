.class public final Lcom/android/wm/shell/compatui/api/CompatUIState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final componentStates:Ljava/util/Map;

.field public final components:Ljava/util/Map;

.field public final sharedState:Lcom/android/wm/shell/compatui/api/CompatUISharedState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p0, Lcom/android/wm/shell/compatui/api/CompatUISharedState;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/api/CompatUISharedState;-><init>()V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method
