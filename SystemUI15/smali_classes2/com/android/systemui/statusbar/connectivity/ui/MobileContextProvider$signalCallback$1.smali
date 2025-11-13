.class public final Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;->this$0:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setSubs(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;->this$0:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
