.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ActionParamCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putActionValue(Ljava/util/HashMap;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo$Companion;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getActionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    const/4 v2, 0x0

    const-string v3, "com.sec.android.app.soundalive"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {v1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/phone/PhoneActionType;->getParamTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putActionValue(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo$Companion;

    invoke-virtual {p2, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/action/wearable/BudsActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {p1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    const-string/jumbo p2, "v2IntentParam"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    :cond_0
    return-void
.end method
