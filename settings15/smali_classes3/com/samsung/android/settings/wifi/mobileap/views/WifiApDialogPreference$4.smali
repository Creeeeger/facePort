.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->$r8$clinit:I

    const-string p1, "WifiApDialogPreference"

    const-string v0, "Dialog dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
