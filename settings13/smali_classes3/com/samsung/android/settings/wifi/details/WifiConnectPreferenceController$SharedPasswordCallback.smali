.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;
.super Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;
.source "WifiConnectPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPasswordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$RlFxsqD12EbvHc6mM7FyY1W8--w(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->lambda$onAccepted$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zM1wvC9VNjyoYwABQug-GD6eAF4(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->lambda$onRejected$1()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    .line 2941
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    return-void
.end method

.method private synthetic lambda$onAccepted$0(Ljava/lang/String;)V
    .locals 0

    .line 2955
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mconnectWithSharedPassword(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRejected$1()V
    .locals 0

    .line 2962
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mrejectSharedPassword(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onAccepted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2945
    invoke-static {p2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2946
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2947
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "mSharedPasswordCallback onAccept : "

    const-string v2, "WifiConnectPrefController"

    if-eqz v0, :cond_1

    .line 2948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSharingPassword(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , password : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    .line 2950
    invoke-static {}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmPasswordView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "mSharedPasswordCallback mPasswordView is null"

    .line 2952
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2955
    :cond_3
    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onAvailable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "WifiConnectPrefController"

    const-string v0, "ProfileShare available"

    .line 2967
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSharedPasswordPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onRejected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSharedPasswordCallback onRejected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmLog(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/wifitrackerlib/LogUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiConnectPrefController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
