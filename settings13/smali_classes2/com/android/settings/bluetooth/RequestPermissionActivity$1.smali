.class Lcom/android/settings/bluetooth/RequestPermissionActivity$1;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-$$Nest$mcancelAndFinish(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    return-void
.end method
