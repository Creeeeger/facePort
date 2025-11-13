.class public final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $activeUsers:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;->$activeUsers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$sanitizeBubbles$1;->$activeUsers:Ljava/util/List;

    iget p1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
