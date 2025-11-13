.class Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;
.super Ljava/util/ArrayDeque;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->mLength:I

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->mLength:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
