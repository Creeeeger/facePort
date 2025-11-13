.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    const-string v1, "QPNE0004"

    const-string v2, "app"

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/log/MediaLogger;

    check-cast v0, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/MediaLoggerImpl;->onRemoveClicked(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Removing player from QSPanel : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mAppName:Ljava/lang/String;

    const-string v1, "MediaControlPanel"

    invoke-static {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$1;->this$0:Lcom/android/systemui/media/SecMediaHost;

    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->dismissMediaData(Ljava/lang/String;JZ)Z

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$1;->val$playerData:Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$4;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController$3;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$3;->val$animatorRunner:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    const-string v2, "QPNE0018"

    const-string v3, "app"

    invoke-static {v0, v2, v3, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MediaControlPanel"

    const-string v1, "MEDIA_OUTPUT_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportDetailView()Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaOutputHelper;->showDetail()V

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.OPEN_MEDIA_OUTPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
