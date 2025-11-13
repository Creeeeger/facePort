.class public final Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelStateChanged(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->$r8$clinit:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;->this$0:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelLog(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelStateChangedListeners:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    return-void
.end method
