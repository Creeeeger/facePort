.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;


# instance fields
.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $gutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic $ongoingActivityData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->$gutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->$ongoingActivityData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->$gutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->$ongoingActivityData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;->onSettingsClick(Ljava/lang/String;)V

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    const-string v1, "Listen ongoing activity card guts settings click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "QPNE0015"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, v1}, Lcom/android/systemui/util/NotificationSAUtil;->sendTypeLog(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseBackCall:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
