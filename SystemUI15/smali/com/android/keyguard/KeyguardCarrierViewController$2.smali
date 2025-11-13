.class Lcom/android/keyguard/KeyguardCarrierViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPhoneStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 5

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p3

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSimStateAbsentAll() : simSlotCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", simStates = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardCarrierView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    move v2, p2

    :goto_0
    if-ge v0, p3, :cond_5

    array-length v3, v1

    if-gt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v1, v0

    const-string v4, "ABSENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v2, p2

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    :goto_2
    return-void
.end method
