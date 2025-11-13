.class public final Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;->this$0:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$1;->this$0:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->access$updateAnimatedImageDrawables(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
