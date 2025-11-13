.class final Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;
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
.field final synthetic $launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

.field final synthetic $taskId:I

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;Landroid/app/ActivityOptions$LaunchCookie;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->$launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    iput p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->$taskId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->$launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    iget p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$onRecentAppClicked$handleResult$1;->$taskId:I

    check-cast v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->returnSelectedApp(Landroid/app/ActivityOptions$LaunchCookie;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
