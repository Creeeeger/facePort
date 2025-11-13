.class public final Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final afterKeyguardGone:Z

.field public final cancelAction:Ljava/lang/Runnable;

.field public final dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    return-void
.end method
