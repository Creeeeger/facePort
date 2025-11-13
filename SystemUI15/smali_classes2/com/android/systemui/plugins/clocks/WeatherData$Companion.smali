.class public final Lcom/android/systemui/plugins/clocks/WeatherData$Companion;
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

    invoke-direct {p0}, Lcom/android/systemui/plugins/clocks/WeatherData$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromBundle$default(Lcom/android/systemui/plugins/clocks/WeatherData$Companion;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/WeatherData;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/plugins/clocks/WeatherData$Companion;->fromBundle(Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/plugins/clocks/WeatherData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDESCRIPTION_KEY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSTATE_KEY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTEMPERATURE_KEY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUSE_CELSIUS_KEY$annotations()V
    .locals 0

    return-void
.end method

.method private final readIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/plugins/clocks/WeatherData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/android/systemui/plugins/clocks/WeatherData;"
        }
    .end annotation

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/plugins/clocks/WeatherData$WeatherStateIcon;->Companion:Lcom/android/systemui/plugins/clocks/WeatherData$WeatherStateIcon$Companion;

    const-string/jumbo v1, "state"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/clocks/WeatherData$WeatherStateIcon$Companion;->fromInt(I)Lcom/android/systemui/plugins/clocks/WeatherData$WeatherStateIcon;

    move-result-object v3

    const-string/jumbo v0, "temperature"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/clocks/WeatherData$Companion;->readIntFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "WeatherData"

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const-string/jumbo v1, "use_celsius"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/systemui/plugins/clocks/WeatherData;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/plugins/clocks/WeatherData;-><init>(Ljava/lang/String;Lcom/android/systemui/plugins/clocks/WeatherData$WeatherStateIcon;ZILkotlin/jvm/functions/Function1;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Weather data parsed "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Weather data did not parse from "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
