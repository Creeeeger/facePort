.class Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;
.super Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;
.source "AppSplitViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;Landroid/view/View;)V
    .locals 2

    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    .line 332
    invoke-direct {p0, p2}, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;-><init>(Landroid/view/View;)V

    .line 333
    sget v0, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;->title:Landroid/widget/TextView;

    .line 334
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->sec_app_split_view_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/settings/R$string;->sec_app_split_view_description_folder:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_app_split_view_description_2:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
