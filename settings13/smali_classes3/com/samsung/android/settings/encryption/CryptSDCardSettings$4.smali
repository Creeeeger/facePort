.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 897
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 900
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 903
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 905
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-direct {v0, p1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 906
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string p1, "sdcard_encrypt_status"

    .line 908
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 909
    sget p1, Lcom/android/settings/R$string;->other_security_settings:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 910
    const-class p1, Lcom/android/settings/security/SecurityAdvancedSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 912
    invoke-static {}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$smisSupportBlockEncryption()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 913
    sget p1, Lcom/android/settings/R$string;->sdcard_encrypt_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_0

    .line 915
    :cond_1
    sget p1, Lcom/android/settings/R$string;->sdcard_encrypt_or_decrypt_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 917
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
