.class public final Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final beforeTextChanged$com$samsung$android$settings$wifi$details$WifiConfigurePreferenceController$1(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$com$samsung$android$settings$wifi$details$WifiConfigurePreferenceController$2(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final onTextChanged$com$samsung$android$settings$wifi$details$WifiConfigurePreferenceController$2(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->enableSubmitIfAppropriate()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->enableSubmitIfAppropriate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->$r8$classId:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->passwordCheck(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
