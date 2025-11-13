.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$CustomViewHolder;
.super Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;
.source "FlexModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroid/view/View;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$CustomViewHolder;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    .line 441
    invoke-direct {p0, p2}, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;-><init>(Landroid/view/View;)V

    .line 442
    sget p1, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$CustomViewHolder;->title:Landroid/widget/TextView;

    .line 443
    sget p0, Lcom/android/settings/R$string;->sec_flex_mode_panel_description:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
