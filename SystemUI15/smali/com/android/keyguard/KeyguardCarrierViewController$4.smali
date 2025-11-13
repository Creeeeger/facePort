.class public final Lcom/android/keyguard/KeyguardCarrierViewController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEmergencyButtonClickedWhenInCall()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method
