.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$allBands$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/BandAidPack;

    invoke-interface {p1}, Lcom/android/systemui/navigationbar/bandaid/BandAidPack;->getBands()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
