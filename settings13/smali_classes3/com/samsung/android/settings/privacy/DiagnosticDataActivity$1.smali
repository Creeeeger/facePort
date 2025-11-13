.class Lcom/samsung/android/settings/privacy/DiagnosticDataActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "DiagnosticDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;->setLinkText(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity$1;->this$0:Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "https://terms.samsungconsent.com/chndevicpp/PDP/1.0/CHN/CHN_zho.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DiagnosticDataActivity$1;->this$0:Lcom/samsung/android/settings/privacy/DiagnosticDataActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
