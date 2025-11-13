.class public final Lcom/android/systemui/navigationbar/util/StoreLogUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allowLogging:Z

.field public lastDepth:I

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final loggingStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/util/StoreLogUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/util/StoreLogUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->loggingStarted:Z

    return-void
.end method


# virtual methods
.method public final printLog(ILjava/lang/String;)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p2, "Store"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
