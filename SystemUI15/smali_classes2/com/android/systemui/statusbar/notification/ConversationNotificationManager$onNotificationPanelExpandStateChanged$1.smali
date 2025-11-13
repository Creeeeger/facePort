.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $expanded:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;->$expanded:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$1;->$expanded:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    new-instance p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    const/4 p1, 0x0

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;-><init>(ILandroid/app/Notification;)V

    :cond_0
    return-object p2
.end method
