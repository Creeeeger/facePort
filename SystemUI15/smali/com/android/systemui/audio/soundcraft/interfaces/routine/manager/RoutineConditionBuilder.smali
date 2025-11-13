.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineConditionBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConditions(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ConditionParamCreator;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/extension/ConditionParamCreator;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    const/4 v2, 0x0

    const-string v3, "com.android.systemui"

    const-string v4, "playing_audio"

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    const-string v3, "playing_audio_app_uid"

    invoke-virtual {v2, v3, p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "playing_audio_app_package_name"

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->parameterValueMap:Ljava/util/Map;

    new-instance p1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>(Z)V

    check-cast p0, Ljava/util/HashMap;

    const-string p2, "is_buds_action"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
