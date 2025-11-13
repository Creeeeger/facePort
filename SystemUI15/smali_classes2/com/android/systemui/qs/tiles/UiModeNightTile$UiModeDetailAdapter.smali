.class public final Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public mDetailSummary:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    sget p1, Lcom/android/systemui/qs/tiles/UiModeNightTile;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0701

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->getDetailSummary$1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final getDetailSummary$1()Ljava/lang/String;
    .locals 5

    sget v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f131074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const v2, 0x7f131075

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    invoke-virtual {v2}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f131072

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f131077

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f131076

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f13106e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "\n\n"

    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6aa

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f131078

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 1

    sget v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 4

    sget v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, "Tobble is blocked when device does not support dark mode"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setToggleState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->updateUiModeState(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->getDetailSummary$1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
