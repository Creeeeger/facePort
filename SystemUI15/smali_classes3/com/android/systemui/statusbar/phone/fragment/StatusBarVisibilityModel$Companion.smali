.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;-><init>()V

    return-void
.end method

.method public static createModelFromFlags(II)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;
    .locals 8

    new-instance v6, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-nez v0, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-nez p0, :cond_4

    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_4

    move p0, v2

    goto :goto_4

    :cond_4
    move p0, v1

    :goto_4
    move-object v0, v6

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    return-object v6
.end method
