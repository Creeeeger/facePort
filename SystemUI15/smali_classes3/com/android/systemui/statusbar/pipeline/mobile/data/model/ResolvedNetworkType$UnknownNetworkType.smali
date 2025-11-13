.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;

.field public static final lookupKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;->lookupKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLookupKey()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$UnknownNetworkType;->lookupKey:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Unknown"

    return-object p0
.end method
