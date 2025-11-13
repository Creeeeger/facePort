.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$2;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$2;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    return-void
.end method
