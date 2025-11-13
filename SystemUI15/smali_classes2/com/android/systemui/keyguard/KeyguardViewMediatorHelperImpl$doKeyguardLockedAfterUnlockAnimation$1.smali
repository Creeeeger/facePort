.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$doKeyguardLockedAfterUnlockAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$doKeyguardLockedAfterUnlockAnimation$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "PendingPinLock : doKeyguardLockedAfterUnlockAnimation"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$doKeyguardLockedAfterUnlockAnimation$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardLocked$2(Landroid/os/Bundle;)V

    return-void
.end method
