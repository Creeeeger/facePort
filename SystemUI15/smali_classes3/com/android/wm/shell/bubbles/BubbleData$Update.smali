.class public final Lcom/android/wm/shell/bubbles/BubbleData$Update;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final bubbles:Ljava/util/List;

.field public expanded:Z

.field public expandedChanged:Z

.field public orderChanged:Z

.field public final overflowBubbles:Ljava/util/List;

.field public final removedBubbles:Ljava/util/List;

.field public removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public selectionChanged:Z

.field public shouldShowEducation:Z

.field public showOverflowChanged:Z

.field public suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public suppressedSummaryChanged:Z

.field public suppressedSummaryGroup:Ljava/lang/String;

.field public unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
