.class Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;
.super Ljava/lang/Object;
.source "RoutineConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showVpnSettingsUnavailableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
