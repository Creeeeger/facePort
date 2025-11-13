.class public final Lcom/android/systemui/flags/FlagsFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

.field public static final flagMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/FlagsFactory;

    invoke-direct {v0}, Lcom/android/systemui/flags/FlagsFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/FlagsFactory;->INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;
    .locals 7

    new-instance v6, Lcom/android/systemui/flags/ReleasedFlag;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/ReleasedFlag;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    invoke-interface {p1, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public static resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const-string/jumbo v0, "systemui"

    invoke-direct {p1, p2, v0, p0}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    const-string/jumbo v0, "systemui"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p2, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/flags/UnreleasedFlag;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string/jumbo v2, "systemui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/UnreleasedFlag;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
