.class Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "RFExposureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;II)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->val$start:I

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->val$end:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 52
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->val$start:I

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->val$end:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 55
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;->-$$Nest$maddQueryStringToSarBaseUrl(Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment$1;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/RFExposureFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
