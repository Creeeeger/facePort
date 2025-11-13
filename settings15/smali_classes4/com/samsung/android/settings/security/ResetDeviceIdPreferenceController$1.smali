.class public final Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "PrefControllerMixin"

    const-string/jumbo p2, "reset device ID confirm"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.deviceidservice.reset.deviceid"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.deviceidservice"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;->access$000(Lcom/samsung/android/settings/security/ResetDeviceIdPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
