.class public final Lcom/android/systemui/shared/rotation/RotationUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

.field public static final ccwCheckArray:[[Z

.field public static floatingButtonPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/rotation/RotationUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shared/rotation/RotationUtil;->Companion:Lcom/android/systemui/shared/rotation/RotationUtil$Companion;

    const/4 v0, 0x4

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    new-array v2, v0, [Z

    fill-array-data v2, :array_1

    new-array v3, v0, [Z

    fill-array-data v3, :array_2

    new-array v0, v0, [Z

    fill-array-data v0, :array_3

    filled-new-array {v1, v2, v3, v0}, [[Z

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/rotation/RotationUtil;->ccwCheckArray:[[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
