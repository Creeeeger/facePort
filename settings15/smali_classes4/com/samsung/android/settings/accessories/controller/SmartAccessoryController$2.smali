.class public final Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$2;->this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$2;->this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;

    invoke-static {p1}, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;->access$000(Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.samsung.android.mateagent"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;->getGalaxyAppsIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$2;->this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;

    invoke-static {p2}, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;->access$100(Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$2;->this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;

    invoke-static {p0}, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;->access$200(Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
