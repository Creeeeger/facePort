.class public final Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;
.super Landroid/util/Property;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CIRCULAR_REVEAL:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-interface {p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-interface {p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
