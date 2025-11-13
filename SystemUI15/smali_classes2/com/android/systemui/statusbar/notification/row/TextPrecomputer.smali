.class public interface abstract Lcom/android/systemui/statusbar/notification/row/TextPrecomputer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$Companion;->$r8$clinit:I

    return-void
.end method

.method public static precompute$default(Lcom/android/systemui/statusbar/notification/row/TextPrecomputer;Landroid/widget/TextView;Ljava/lang/CharSequence;)Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;-><init>(Landroid/widget/TextView;Landroid/text/Spannable;ZLjava/lang/CharSequence;)V

    return-object v0
.end method
