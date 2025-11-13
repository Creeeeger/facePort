.class public final Lcom/android/systemui/shade/PanelTransitionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shade/PanelTransitionState;

    invoke-direct {v0}, Lcom/android/systemui/shade/PanelTransitionState;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "COMBINED_STATE"

    goto :goto_0

    :cond_1
    const-string p0, "TRANSITION_STATE"

    goto :goto_0

    :cond_2
    const-string p0, "SHADE_STATE"

    goto :goto_0

    :cond_3
    const-string p0, "QS_STATE"

    :goto_0
    return-object p0
.end method
