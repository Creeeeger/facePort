.class Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$7;
.super Ljava/lang/Object;
.source "SecureFolderSysUiClientHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->showForgotPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$7;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$7;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$700(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
