.class public abstract Lcom/android/systemui/controls/util/SALogger$Event;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>()V

    return-void
.end method

.method public static getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lcom/android/systemui/controls/ui/StatusBehavior;

    const-string v1, "Tap to open"

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    instance-of p0, p0, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p0, :cond_6

    const-string v1, "Stateless toggle"

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;

    if-eqz v0, :cond_3

    const-string v1, "Toggle"

    goto :goto_1

    :cond_3
    instance-of v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    if-eqz p0, :cond_4

    const-string v1, "Toggle with slider"

    goto :goto_1

    :cond_4
    const-string v1, "Range"

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/android/systemui/controls/util/SALogger$Event;->getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method public abstract sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
.end method
