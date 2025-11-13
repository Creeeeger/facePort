.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;
.implements Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsSeekBarEnabled:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsSeekBarEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->updateSeekBarVisibility()V

    :goto_0
    return-void
.end method

.method public onScrubbingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsScrubbing:Z

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsScrubbing:Z

    new-instance p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda6;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
