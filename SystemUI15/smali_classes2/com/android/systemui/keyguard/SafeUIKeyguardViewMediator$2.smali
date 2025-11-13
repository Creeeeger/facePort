.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mDreamOverlayShowing:Z

    return-void
.end method
