.class final Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;->INSTANCE:Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$sensorLocation$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;

    check-cast p2, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;

    iget p0, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->left:I

    iget v0, p2, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->left:I

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->top:I

    iget v0, p2, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->top:I

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->length:I

    iget v0, p2, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->length:I

    if-ne p0, v0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->isSensorVerticalInDefaultOrientation:Z

    iget-boolean p1, p2, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->isSensorVerticalInDefaultOrientation:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
