.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurnedOff()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
