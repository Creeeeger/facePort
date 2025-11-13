.class public Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;
.super Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;
.source "SavedAccessPointCategory.java"


# instance fields
.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mViewType:I

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mViewType:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointCategory;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_subtitle_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
