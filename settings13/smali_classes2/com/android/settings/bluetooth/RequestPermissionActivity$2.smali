.class Lcom/android/settings/bluetooth/RequestPermissionActivity$2;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 232
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
