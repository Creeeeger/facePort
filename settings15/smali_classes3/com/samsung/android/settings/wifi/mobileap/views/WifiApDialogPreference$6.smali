.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afterTextChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApDialogPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->mMessageEditTextString:Ljava/lang/String;

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
