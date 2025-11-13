.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;->maxSize:Z

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
