.class Lcom/android/settings/network/apn/ApnSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCallState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApnSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreciseDataConnectionStateChanged() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmRestoreDefaultApnMode(Lcom/android/settings/network/apn/ApnSettings;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 252
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$1;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->showDialog(I)V

    :cond_1
    :goto_0
    return-void
.end method
