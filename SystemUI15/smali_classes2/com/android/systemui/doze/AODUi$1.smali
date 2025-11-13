.class public final Lcom/android/systemui/doze/AODUi$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/AODUi;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/AODUi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlwaysOnSuppressedChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    iget-object v0, p0, Lcom/android/systemui/doze/AODUi;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method
