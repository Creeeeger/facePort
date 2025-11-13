.class public final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;->$b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$addBubbles$uniqueBubbles$1$1;->$b:Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
