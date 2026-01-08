.class public final Lcom/samsung/android/biometrics/app/setting/FocusableWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/FocusableWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/FocusableWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/FocusableWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/FocusableWindow;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "ACTION: CLOSE_SYSTEM_DIALOG: reason = "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "reason"

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/FocusableWindow;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->onSystemDialogClosed()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
