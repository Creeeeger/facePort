.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    check-cast p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget p0, p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    iget p1, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    sub-int/2addr p0, p1

    return p0
.end method
