.class public final Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromConnectionState(Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;I)Lcom/android/systemui/common/shared/model/Icon$Resource;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;->fromSignalStrength(I)Lcom/android/systemui/common/shared/model/Icon$Resource;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance p1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v0, 0x7f130141

    invoke-direct {p1, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v0, 0x7f08138c

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_0
    return-object p0
.end method

.method public static fromSignalStrength(I)Lcom/android/systemui/common/shared/model/Icon$Resource;
    .locals 3

    const v0, 0x7f130143

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v0, 0x2

    const v1, 0x7f130144

    const v2, 0x7f08138a

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    const v1, 0x7f130142

    const v2, 0x7f08138b

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v1, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v0, 0x7f081389

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v1, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v0, 0x7f081388

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_0
    return-object p0
.end method

.method public static fromSignalStrengthCN(I)Lcom/android/systemui/common/shared/model/Icon$Resource;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    const v1, 0x7f130144

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    const v1, 0x7f130142

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    const v2, 0x7f081391

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081390

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f08138f

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f08138e

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130143

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f08138d

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_0
    return-object p0
.end method

.method public static fromSignalStrengthKDDI(I)Lcom/android/systemui/common/shared/model/Icon$Resource;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130142

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081395

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130144

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081394

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130143

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081393

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_0
    return-object p0
.end method

.method public static fromSignalStrengthVZW(I)Lcom/android/systemui/common/shared/model/Icon$Resource;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130142

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081395

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130144

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081394

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130143

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    const v1, 0x7f081393

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_0
    return-object p0
.end method
