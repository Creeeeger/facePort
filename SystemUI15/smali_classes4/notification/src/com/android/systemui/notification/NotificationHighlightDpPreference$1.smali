.class public final synthetic Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeStateListener;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;->$tmp0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/shade/ShadeStateListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const-string v5, "onPanelStateChanged(I)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;->$tmp0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    const-class v3, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    const-string v4, "onPanelStateChanged"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onPanelStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;->$tmp0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    iget-object v0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    const-string v0, "STATE_OPEN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->getImpotantPersonList()V

    :cond_0
    return-void
.end method
