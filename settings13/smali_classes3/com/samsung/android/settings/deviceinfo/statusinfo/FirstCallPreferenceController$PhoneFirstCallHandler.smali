.class Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;
.super Landroid/os/Handler;
.source "FirstCallPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneFirstCallHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;->mStatus:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AsyncResult exception occur!!! - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirstCallPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController$PhoneFirstCallHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;

    .line 85
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->-$$Nest$smgetFirstCallDateValue([B)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;->-$$Nest$mupdateFirstCallDate(Lcom/samsung/android/settings/deviceinfo/statusinfo/FirstCallPreferenceController;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
