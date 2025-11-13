.class public final Lcom/android/systemui/controls/util/SALogger$Event$TapCardLayout;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapCardLayout;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 12

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;

    iget-object p0, p0, Lcom/android/systemui/controls/util/SALogger$Event$TapCardLayout;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapCardWithButton;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapCardWithButton;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapCardWithoutButton;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$TapCardWithoutButton;

    :goto_0
    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$Template;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$Template;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/systemui/controls/util/SALogger$Event;->getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v7, v3

    goto :goto_2

    :cond_1
    const-string v3, ""

    goto :goto_1

    :goto_2
    sget-object v3, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "Device type"

    const-string v4, "Dvcs05"

    const-string/jumbo v6, "template"

    const-string v8, "Device name"

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
