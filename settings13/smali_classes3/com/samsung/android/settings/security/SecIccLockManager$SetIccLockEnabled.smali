.class Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;
.super Landroid/os/AsyncTask;
.source "SecIccLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SecIccLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetIccLockEnabled"
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
.field private final mPin:Ljava/lang/String;

.field private final mState:Z

.field final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/security/SecIccLockManager;ZLjava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 277
    iput-boolean p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mState:Z

    .line 278
    iput-object p3, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mPin:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/security/SecIccLockManager;ZLjava/lang/String;Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/telephony/PinResult;
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/security/SecIccLockManager;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mState:Z

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mPin:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 272
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->doInBackground([Ljava/lang/Void;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/telephony/PinResult;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->-$$Nest$fputmSetLoader(Lcom/samsung/android/settings/security/SecIccLockManager;Z)V

    .line 289
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    .line 289
    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->-$$Nest$miccLockChanged(Lcom/samsung/android/settings/security/SecIccLockManager;ZI)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Landroid/telephony/PinResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->onPostExecute(Landroid/telephony/PinResult;)V

    return-void
.end method
