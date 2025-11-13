.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->showAlert(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    const/16 p1, 0x37

    invoke-static {p0, p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$mrunKeyguardConfirmation(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "CryptKeeperSDSettings"

    const-string p1, "Alert::Keyguard confirmation failed"

    .line 862
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
