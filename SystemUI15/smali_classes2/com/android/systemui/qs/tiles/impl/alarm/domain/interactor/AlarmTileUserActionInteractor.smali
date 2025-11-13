.class public final Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final inputHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileUserActionInteractor;->inputHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/alarm/domain/interactor/AlarmTileUserActionInteractor;->inputHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;->alarmClockInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/impl/alarm/domain/model/AlarmTileModel$NextAlarmSet;->alarmClockInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object p2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    check-cast p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->handle(Lcom/android/systemui/animation/Expandable;Landroid/app/PendingIntent;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    instance-of p0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
