.class public final enum Lcom/google/android/material/util/MaxFontScaleRatio;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/util/MaxFontScaleRatio;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/material/util/MaxFontScaleRatio;

.field public static final enum LARGE:Lcom/google/android/material/util/MaxFontScaleRatio;

.field public static final enum MEDIUM:Lcom/google/android/material/util/MaxFontScaleRatio;

.field public static final enum SMALL:Lcom/google/android/material/util/MaxFontScaleRatio;


# instance fields
.field private final ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/material/util/MaxFontScaleRatio;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "SMALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/material/util/MaxFontScaleRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/google/android/material/util/MaxFontScaleRatio;->SMALL:Lcom/google/android/material/util/MaxFontScaleRatio;

    new-instance v1, Lcom/google/android/material/util/MaxFontScaleRatio;

    const v2, 0x3f933333    # 1.15f

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/material/util/MaxFontScaleRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/google/android/material/util/MaxFontScaleRatio;->MEDIUM:Lcom/google/android/material/util/MaxFontScaleRatio;

    new-instance v2, Lcom/google/android/material/util/MaxFontScaleRatio;

    const v3, 0x3fa66666    # 1.3f

    const-string v4, "LARGE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/material/util/MaxFontScaleRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lcom/google/android/material/util/MaxFontScaleRatio;->LARGE:Lcom/google/android/material/util/MaxFontScaleRatio;

    new-instance v3, Lcom/google/android/material/util/MaxFontScaleRatio;

    const/high16 v4, 0x3fc00000    # 1.5f

    const-string v5, "EXTRA_LARGE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/material/util/MaxFontScaleRatio;-><init>(Ljava/lang/String;IF)V

    new-instance v4, Lcom/google/android/material/util/MaxFontScaleRatio;

    const v5, 0x3fd9999a    # 1.7f

    const-string v6, "HUGE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/google/android/material/util/MaxFontScaleRatio;-><init>(Ljava/lang/String;IF)V

    new-instance v5, Lcom/google/android/material/util/MaxFontScaleRatio;

    const/high16 v6, 0x40000000    # 2.0f

    const-string v7, "EXTRA_HUGE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/material/util/MaxFontScaleRatio;-><init>(Ljava/lang/String;IF)V

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/material/util/MaxFontScaleRatio;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/util/MaxFontScaleRatio;->$VALUES:[Lcom/google/android/material/util/MaxFontScaleRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/material/util/MaxFontScaleRatio;->ratio:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/util/MaxFontScaleRatio;
    .locals 1

    const-class v0, Lcom/google/android/material/util/MaxFontScaleRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/util/MaxFontScaleRatio;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/util/MaxFontScaleRatio;
    .locals 1

    sget-object v0, Lcom/google/android/material/util/MaxFontScaleRatio;->$VALUES:[Lcom/google/android/material/util/MaxFontScaleRatio;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/util/MaxFontScaleRatio;

    return-object v0
.end method


# virtual methods
.method public final getRatio()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/util/MaxFontScaleRatio;->ratio:F

    return p0
.end method
