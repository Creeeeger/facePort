.class public final Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    sget-object p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation$1()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "CryptKeeperSDSettings"

    const-string p1, "Alert::Keyguard confirmation failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
