.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "KeyguardSecAffordanceView"

    const-string v0, "reset timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->-$$Nest$mresetOnTimeout(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    :goto_0
    return-void
.end method
