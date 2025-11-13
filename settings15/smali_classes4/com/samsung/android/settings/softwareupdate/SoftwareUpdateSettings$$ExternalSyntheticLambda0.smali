.class public final synthetic Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    check-cast p1, Ljava/lang/Integer;

    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockDSH:Z

    sget-object v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->setDBAndLogging(Landroid/content/Context;I)V

    return-void
.end method
