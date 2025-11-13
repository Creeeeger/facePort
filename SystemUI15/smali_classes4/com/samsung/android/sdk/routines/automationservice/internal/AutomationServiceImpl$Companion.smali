.class public final Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;
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

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;-><init>()V

    return-void
.end method

.method public static final access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Landroid/content/Context;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->allowedPackageNamesByType:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT_FOR_BUDS:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    if-ne p2, v2, :cond_5

    const-string v2, "com.samsung.accessory"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v3, v2, :cond_1

    move v3, v2

    :cond_1
    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mgr"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez p1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v1

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMatchingPackageName: invalid Request packageName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "AutomationServiceImpl@SDK"

    invoke-static {p2, p0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method
