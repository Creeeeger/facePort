.class public final synthetic Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "AppsAllowedOnCoverScreenSettings"

    if-nez v0, :cond_0

    const-string p0, "multi star\'s launcher widget isn\'t available."

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "samsungapps://ProductDetail/com.samsung.android.multistar/?fsOrigin=stubUpdateCheck&fsUpdateType=self"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Activity NOT found."

    invoke-static {v1, p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
