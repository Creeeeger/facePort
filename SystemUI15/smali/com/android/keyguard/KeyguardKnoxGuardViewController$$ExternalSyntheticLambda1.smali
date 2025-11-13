.class public final synthetic Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "KeyguardKnoxGuardView"

    const-string v0, "mWifiButton OnClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->onUserInput()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
