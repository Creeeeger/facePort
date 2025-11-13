.class public final Landroidx/compose/ui/text/android/selection/WordSegmentFinder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final text:Ljava/lang/CharSequence;

.field public final wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    return-void
.end method
