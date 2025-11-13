.class public final synthetic Lcom/android/settings/media/MediaOutputIndicatorWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    sget v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mPackageName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->startScanOnRouter()V

    return-void
.end method
