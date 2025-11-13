.class public final synthetic Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina;

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "regulatory_chn_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "allow_access_data"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina$CheckLicenseInfoRunnable;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina$CheckLicenseInfoRunnable;-><init>(Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoActivityChina;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
