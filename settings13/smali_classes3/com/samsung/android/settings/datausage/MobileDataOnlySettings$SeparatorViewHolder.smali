.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;
.super Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparatorViewHolder"
.end annotation


# instance fields
.field public spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 1

    .line 563
    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;-><init>(Landroid/view/View;)V

    .line 564
    sget v0, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$SeparatorViewHolder;->spinner:Landroid/widget/Spinner;

    .line 565
    invoke-static {p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$mgetSpinnerAdapter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 566
    sget p0, Lcom/android/settings/R$id;->filter_spinner_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 567
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 p2, 0xf

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 568
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    return-void
.end method
