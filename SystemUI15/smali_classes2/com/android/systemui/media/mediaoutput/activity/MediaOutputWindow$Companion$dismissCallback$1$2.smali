.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;
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
.field final synthetic $activityControllerListener:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;

.field final synthetic $activityManager:Landroid/app/ActivityManager;

.field final synthetic $systemReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;

.field final synthetic $this_dismissCallback:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;Landroid/app/ActivityManager;Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$this_dismissCallback:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$systemReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$activityManager:Landroid/app/ActivityManager;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$activityControllerListener:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "MediaOutputWindow"

    const-string/jumbo v1, "unregister()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$this_dismissCallback:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$systemReceiver:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$systemReceiver$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$activityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$2;->$activityControllerListener:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion$dismissCallback$1$activityControllerListener$1;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->semUnregisterActivityControllerListener(Landroid/app/ActivityManager$SemActivityControllerListener;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
