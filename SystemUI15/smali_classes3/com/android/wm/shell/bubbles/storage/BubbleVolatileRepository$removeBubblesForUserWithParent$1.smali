.class public final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;->$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;->$userId:I

    iget p1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
