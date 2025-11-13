.class Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;
.super Landroid/os/AsyncTask;
.source "SecIccLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SecIccLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeIccLockPin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/telephony/PinResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNewPin:Ljava/lang/String;

.field private final mOldPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/security/SecIccLockManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mOldPin:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mNewPin:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/security/SecIccLockManager;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/telephony/PinResult;
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/security/SecIccLockManager;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mOldPin:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->doInBackground([Ljava/lang/Void;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/telephony/PinResult;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->-$$Nest$fputmChangeLoader(Lcom/samsung/android/settings/security/SecIccLockManager;Z)V

    .line 234
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    .line 234
    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->-$$Nest$miccPinChanged(Lcom/samsung/android/settings/security/SecIccLockManager;ZI)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p1, Landroid/telephony/PinResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->onPostExecute(Landroid/telephony/PinResult;)V

    return-void
.end method
