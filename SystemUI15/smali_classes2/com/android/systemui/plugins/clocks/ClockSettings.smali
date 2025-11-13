.class public final Lcom/android/systemui/plugins/clocks/ClockSettings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;

.field private static final KEY_CLOCK_ID:Ljava/lang/String;

.field private static final KEY_METADATA:Ljava/lang/String;

.field private static final KEY_SEED_COLOR:Ljava/lang/String;


# instance fields
.field private final clockId:Ljava/lang/String;

.field private metadata:Lorg/json/JSONObject;

.field private final seedColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->Companion:Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;

    const-string v0, "clockId"

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->KEY_CLOCK_ID:Ljava/lang/String;

    const-string/jumbo v0, "seedColor"

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->KEY_SEED_COLOR:Ljava/lang/String;

    const-string v0, "metadata"

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->KEY_METADATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/plugins/clocks/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->metadata:Lorg/json/JSONObject;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/clocks/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getKEY_CLOCK_ID$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->KEY_CLOCK_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_METADATA$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->KEY_METADATA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_SEED_COLOR$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/plugins/clocks/ClockSettings;->KEY_SEED_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/clocks/ClockSettings;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/ClockSettings;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/plugins/clocks/ClockSettings;->copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/systemui/plugins/clocks/ClockSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/systemui/plugins/clocks/ClockSettings;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/clocks/ClockSettings;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/clocks/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/clocks/ClockSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockSettings;

    iget-object v1, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getClockId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMetadata()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->metadata:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final getSeedColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setMetadata(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->metadata:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->clockId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/plugins/clocks/ClockSettings;->seedColor:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClockSettings(clockId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", seedColor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
