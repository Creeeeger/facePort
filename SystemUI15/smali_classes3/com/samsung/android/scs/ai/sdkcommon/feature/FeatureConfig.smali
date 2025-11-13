.class public final Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

.field public static final JSON_KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final JSON_KEY_FEATURES:Ljava/lang/String; = "features"


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->Companion:Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->copy(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    iget-object p1, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getFeatures()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeatureConfig(appVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
