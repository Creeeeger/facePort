.class public final Lcom/android/settings/datetime/timezone/SpannableUtil$SpannableFormattable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Formattable;


# instance fields
.field public final mSpannable:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/SpannableUtil$SpannableFormattable;->mSpannable:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public final formatTo(Ljava/util/Formatter;III)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/SpannableUtil$SpannableFormattable;->mSpannable:Landroid/text/Spannable;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p4, v2, :cond_0

    invoke-interface {p0, v0, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    const/4 p4, 0x1

    and-int/2addr p2, p4

    if-eqz p2, :cond_1

    move v0, p4

    :cond_1
    if-ne p3, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p3, p2

    if-gtz p3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string p4, " "

    if-nez v0, :cond_4

    invoke-virtual {p4, p3}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {p4, p3}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    move-object p0, p2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SpannableUtil"

    const-string p2, "error in SpannableFormattable"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
