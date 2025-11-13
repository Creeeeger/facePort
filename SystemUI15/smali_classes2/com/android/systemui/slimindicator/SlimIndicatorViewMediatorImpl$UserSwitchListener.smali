.class Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->postUpdateAll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
