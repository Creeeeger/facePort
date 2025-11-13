.class Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController$1;
.super Ljava/lang/Object;
.source "ResetDeviceIdPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;->ShowAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "PrefControllerMixin"

    const-string p2, "reset device ID confirm"

    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.deviceidservice.reset.deviceid"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.deviceidservice"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;->access$000(Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
