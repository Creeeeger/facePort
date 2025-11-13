.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V

    return-void
.end method
