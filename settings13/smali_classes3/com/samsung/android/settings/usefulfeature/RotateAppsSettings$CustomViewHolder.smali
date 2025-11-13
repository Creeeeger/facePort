.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$CustomViewHolder;
.super Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;
.source "RotateAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;Landroid/view/View;)V
    .locals 2

    .line 371
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$CustomViewHolder;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    .line 372
    invoke-direct {p0, p2}, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;-><init>(Landroid/view/View;)V

    .line 373
    sget v0, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$CustomViewHolder;->title:Landroid/widget/TextView;

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_rotate_all_apps_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_rotate_all_apps_description_2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$CustomViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
