.class public final synthetic Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

.field public final synthetic f$1:Landroid/content/ClipData;

.field public final synthetic f$2:Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/TextClassifierResolver;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ClipData;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ClipData;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0000"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipData;->getCallingUserId()I

    move-result v0

    iput v0, v1, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->mCallingUserId:I

    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v3, v2, v4}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/BaseResolver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/service/textclassifier/TextClassifierService;->getDefaultTextClassifierImplementation(Landroid/content/Context;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;

    invoke-virtual {v1, v3, p0, v2}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->getResultFromTextClassification(Landroid/view/textclassifier/TextClassification;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;Z)Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/BaseResolver;->TAG:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/BaseResolver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textclassification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    invoke-virtual {v1, v0, p0, v4}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->getResultFromTextClassification(Landroid/view/textclassifier/TextClassification;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;Z)Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    move-result-object v2

    const-string/jumbo p0, "updateByTextClassifying: Use System type"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "updateByTextClassifying: Use Default System type"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_1
    return-object p0
.end method
