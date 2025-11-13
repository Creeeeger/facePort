.class public final Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mItemResId:I

.field public final synthetic this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    const p1, 0x7f0d020f

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    iput p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, 0x30

    const/16 v0, 0x20

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const v0, 0x7f0a03b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    if-eqz p3, :cond_3

    iget-object p3, v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object v2, v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    iget-object v2, v2, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mLightDarkMap:Ljava/util/Map;

    iget v3, v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v3, v2

    :cond_2
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iget-object p3, v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a03ba

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mLabel:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
