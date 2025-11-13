.class public final Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $logException:Z

.field public final synthetic $precomputedText:Landroid/text/Spannable;

.field public final synthetic $text:Ljava/lang/CharSequence;

.field public final synthetic $textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/text/Spannable;ZLjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$textView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$precomputedText:Landroid/text/Spannable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$logException:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$precomputedText:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$logException:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PrecomputedText setText failed for TextView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextPrecomputer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/TextPrecomputer$precompute$1;->$text:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
