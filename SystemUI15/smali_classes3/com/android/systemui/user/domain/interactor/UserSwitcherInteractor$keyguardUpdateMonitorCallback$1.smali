.class public final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardGoingAway()V
    .locals 1

    sget v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dismissDialog()V

    return-void
.end method
