.class public final Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$2;->this$0:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$2;->this$0:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;

    iget p2, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->transitionToFullShadeDistance:I

    iget v0, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->maxOverScrollAmount:I

    iget-wide v1, p0, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;->releaseOverScrollDuration:J

    const-string p0, "\n            SplitShadeLockScreenOverScroller:\n                Resources:\n                    transitionToFullShadeDistance: "

    const-string v3, "\n                    maxOverScrollAmount: "

    const-string v4, "\n                    releaseOverScrollDuration: "

    invoke-static {p2, v0, p0, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\n                State:\n                    previousOverscrollAmount: 0\n                    expansionDragDownAmount: 0.0\n            "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
