.class public final synthetic Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

.field public final synthetic f$1:Lcom/android/settings/widget/LoadingViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;Lcom/android/settings/widget/LoadingViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/widget/LoadingViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;

    move-result-object v0

    const-string v1, "com.samsung.android.multistar"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->getDownloadInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/DownloadInfo;

    move-result-object v0

    const-string v1, "AppsAllowedOnCoverScreenSettings"

    if-eqz v0, :cond_0

    const-string v0, "MultiStar can be downloaded from galaxy store."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/widget/LoadingViewController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "MultiStar can\'t be downloaded from galaxy store."

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/widget/LoadingViewController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
