.class public final Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCombinedProviderInfo:Lcom/android/settings/applications/credentials/CombinedProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Lcom/android/settings/applications/credentials/CombinedProviderInfo;)V
    .locals 7

    invoke-virtual {p5}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsSubtitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    iput-object p5, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;->mCombinedProviderInfo:Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    return-void
.end method
