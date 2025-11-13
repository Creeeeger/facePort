.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;
.super Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    invoke-direct {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTrack(Landroid/media/MediaDescription;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V
    .locals 11

    const-string v0, "MediaResumeListener"

    invoke-virtual {p3}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    move-object v7, v1

    :goto_0
    iget-object v1, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Landroid/content/ComponentName;)V

    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Error getting package information"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Adding resume controls for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-nez p0, :cond_1

    move-object p0, v2

    :cond_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget v4, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mUserId:I

    move-object v3, p0

    move-object v5, p1

    invoke-interface/range {v3 .. v10}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method
