.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    check-cast p1, Lcom/android/internal/statusbar/IAppClipsService;

    sget-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_SCREENSHOT_URI:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/statusbar/IAppClipsService;->canLaunchCaptureContentActivityForNoteInternal(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
