.class public final synthetic Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/TwoFingerSwipeGestureDetector;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V

    return-object v0
.end method
