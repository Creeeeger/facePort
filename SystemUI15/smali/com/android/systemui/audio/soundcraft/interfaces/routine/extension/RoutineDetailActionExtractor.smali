.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBudsActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    if-eqz p0, :cond_2

    const-string/jumbo p1, "v2IntentParam"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method public static getPhoneActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getActionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getParamTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2
.end method
