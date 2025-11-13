.class public final Lcom/android/settingslib/notification/ZenDurationDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

.field public final synthetic val$zenDuration:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/notification/ZenDurationDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iput p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->val$zenDuration:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iget p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->val$zenDuration:I

    invoke-virtual {p1, p2}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateZenDuration(I)V

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iget-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.samsung.android.settings.notification.zen.salogging.NOTIFICATION_DND_SA_LOGGING"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
