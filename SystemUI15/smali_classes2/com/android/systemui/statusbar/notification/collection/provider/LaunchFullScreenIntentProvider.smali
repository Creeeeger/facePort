.class public final Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final listeners:Lcom/android/systemui/util/ListenerSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v0}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    return-void
.end method


# virtual methods
.method public final launchFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LaunchFullScreenIntentProvider"

    const-string v1, "no listeners found when launchFullScreenIntent requested"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->launchFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method
