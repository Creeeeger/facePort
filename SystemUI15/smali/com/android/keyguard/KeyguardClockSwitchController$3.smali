.class public final Lcom/android/keyguard/KeyguardClockSwitchController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$3;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnlockAnimationFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$3;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method
