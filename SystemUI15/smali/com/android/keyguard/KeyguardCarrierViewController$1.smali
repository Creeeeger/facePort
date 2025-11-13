.class public final Lcom/android/keyguard/KeyguardCarrierViewController$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    return-void
.end method
