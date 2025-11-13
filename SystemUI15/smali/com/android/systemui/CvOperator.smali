.class public final Lcom/android/systemui/CvOperator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sISOCountry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CvOperator;->sISOCountry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHotspotStringID(I)I
    .locals 3

    const v0, 0x7f130f16

    sget-object v1, Lcom/android/systemui/CvOperator;->sISOCountry:Ljava/lang/String;

    const-string v2, "JP"

    if-ne p0, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f130f17

    goto :goto_0

    :cond_0
    const v0, 0x7f130c3f

    if-ne p0, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f130c40

    goto :goto_0

    :cond_1
    const v0, 0x7f130c43

    if-ne p0, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f130c44

    goto :goto_0

    :cond_2
    const v0, 0x7f130c41

    if-ne p0, v0, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f130c42

    :cond_3
    :goto_0
    return p0
.end method
