.class public final Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;
.super Lcom/android/systemui/media/mediaoutput/compose/Screen;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "SettingHome"

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/Screen;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x7a7d5545

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SettingHome"

    return-object p0
.end method
