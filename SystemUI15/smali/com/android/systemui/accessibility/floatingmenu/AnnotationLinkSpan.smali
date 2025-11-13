.class public final Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mClickListener:Ljava/util/Optional;


# direct methods
.method public static synthetic $r8$lambda$eF5QuUFfVOFWqtCLusK4BzSqpqA(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableString;Landroid/text/Annotation;Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;

    invoke-direct {v0, p3}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p2}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->mClickListener:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->mClickListener:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
