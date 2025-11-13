.class Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$2;
.super Ljava/lang/Object;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;->showProceedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
