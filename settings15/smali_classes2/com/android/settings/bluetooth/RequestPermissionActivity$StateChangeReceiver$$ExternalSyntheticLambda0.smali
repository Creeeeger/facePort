.class public final synthetic Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    sget v0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->cancelAndFinish()V

    :cond_0
    return-void
.end method
