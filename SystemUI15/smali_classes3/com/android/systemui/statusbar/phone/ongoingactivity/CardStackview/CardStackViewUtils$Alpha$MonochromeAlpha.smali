.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;
.super Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$CommonAlpha;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$MonochromeAlpha;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils$Alpha$CommonAlpha;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBaseColors()Ljava/util/List;
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p0, v0, v0}, [Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyColors()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0, p0, p0}, [Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
