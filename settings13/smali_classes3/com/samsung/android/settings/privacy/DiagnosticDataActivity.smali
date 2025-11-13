.class public Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;
.super Landroid/app/Activity;
.source "DiagnosticDataActivity.java"


# instance fields
.field private mDiagnosticInfoText:Landroid/widget/TextView;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setLinkText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    .line 64
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 65
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "%1$s"

    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "%2$s"

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    .line 68
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    new-instance p2, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity$1;-><init>(Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;)V

    const/16 p0, 0x21

    .line 80
    invoke-virtual {v0, p2, v1, v2, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 82
    invoke-virtual {v0, p2, v1, v2, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    sget p1, Lcom/android/settings/R$layout;->sec_diagnostic_data_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 38
    sget p1, Lcom/android/settings/R$id;->diagnostic_info_body:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->mDiagnosticInfoText:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/android/settings/R$id;->diagnostic_info_scroll:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->mScrollView:Landroid/view/View;

    const/16 v1, 0xf

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "swlp_option"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 45
    sget v1, Lcom/android/settings/R$string;->link_details:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 50
    sget-object p1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGNONSENSITIVE_GET:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 52
    sget-object p1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAGSENSITIVE_GET:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 54
    sget-object p1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_CBT_GET:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->mDiagnosticInfoText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->setLinkText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_3
    sget-object p1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_GET:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 60
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->mDiagnosticInfoText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "DiagnosticDataActivity"

    const-string v0, "onOptionsItemSelected() up button pressed"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method
