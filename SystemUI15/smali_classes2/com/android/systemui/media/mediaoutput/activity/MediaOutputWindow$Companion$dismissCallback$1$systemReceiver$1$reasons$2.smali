.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$reasons$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$reasons$2;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1$reasons$2;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;->SYSTEM_DIALOG_REASON_DREAM:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
