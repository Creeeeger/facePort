.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBypassStateChanged(Z)V
    .locals 0

    sget-object p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->maybeClearHardDozeAmountOverrideHidingNotifs()V

    return-void
.end method
