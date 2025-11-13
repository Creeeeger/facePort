.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $percentValue:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;->$percentValue:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;->$percentValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;->percent:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;->$percentValue:I

    int-to-double v2, p0

    const/16 p0, 0x64

    int-to-double v4, p0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
