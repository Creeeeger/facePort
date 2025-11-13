.class Lcom/android/keyguard/KeyguardStatusViewController$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$5;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$5;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    :cond_0
    return-void
.end method

.method public final onTimeChanged()V
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$5;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    return-void
.end method
