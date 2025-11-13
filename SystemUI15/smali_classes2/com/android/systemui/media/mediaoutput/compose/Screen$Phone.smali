.class public final Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;
.super Lcom/android/systemui/media/mediaoutput/compose/Screen;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "packageName"

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone$1;

    invoke-static {v1, v0}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Phone/{packageName}"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/Screen;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final createRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "Phone/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x4a2019da    # 2623094.5f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Phone"

    return-object p0
.end method
