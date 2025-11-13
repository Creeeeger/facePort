.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    return-void
.end method
