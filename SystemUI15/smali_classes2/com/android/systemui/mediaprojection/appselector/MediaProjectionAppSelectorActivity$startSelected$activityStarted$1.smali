.class final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

.field final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;Landroid/app/ActivityOptions$LaunchCookie;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->$launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/app/WaitResult;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->$launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->returnSelectedApp(Landroid/app/ActivityOptions$LaunchCookie;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
