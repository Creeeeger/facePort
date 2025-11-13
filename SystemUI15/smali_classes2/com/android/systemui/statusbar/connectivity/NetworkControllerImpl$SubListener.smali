.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$SubListener;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method
