.class public final synthetic Lcom/android/settings/utils/AnnotationSpan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Landroid/text/SpannableString;


# direct methods
.method public synthetic constructor <init>(Landroid/text/SpannableString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/AnnotationSpan$$ExternalSyntheticLambda0;->f$0:Landroid/text/SpannableString;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/AnnotationSpan$$ExternalSyntheticLambda0;->f$0:Landroid/text/SpannableString;

    check-cast p1, Landroid/text/Annotation;

    invoke-virtual {p0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method
