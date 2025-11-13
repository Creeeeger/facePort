.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$setManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$setManager$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$setManager$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->useMediaResumption:Z

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->useMediaResumption:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->setMediaResumptionEnabled(Z)V

    return-void
.end method
