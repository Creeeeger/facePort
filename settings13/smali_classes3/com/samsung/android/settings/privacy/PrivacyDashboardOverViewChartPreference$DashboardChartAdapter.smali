.class public Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PrivacyDashboardOverViewChartPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DashboardChartAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mOverViewList:[I

.field mRes:I

.field final synthetic this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;[II)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    .line 175
    iput-object p3, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mOverViewList:[I

    .line 176
    iput p4, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mRes:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mOverViewList:[I

    array-length p0, p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getMaxUsageCount()I
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMaxCount:I

    return p0
.end method

.method public getmUsageBarWidth(I)I
    .locals 1

    int-to-float p1, p1

    .line 292
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getMaxUsageCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->permission_graph_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 205
    instance-of v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;

    if-eqz v0, :cond_8

    .line 206
    check-cast p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;

    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->sec_background_history_usage_bar_rtl:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->sec_background_history_usage_bar:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mPermissionNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermission:[I

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmUpdateFlag(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageCount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 217
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 218
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 246
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mPermissionImgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmPdContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mgetLocationImage(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)I

    move-result v0

    if-le p2, v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object v2, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v5, v5, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    .line 249
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getmUsageBarWidth(I)I

    move-result v5

    .line 248
    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->setAnimation(Landroid/view/View;II)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fputmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    goto :goto_2

    .line 252
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v2, v2, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getmUsageBarWidth(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 255
    :goto_2
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$plurals;->ps_apps:I

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v5, v5, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    .line 255
    invoke-virtual {v2, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 259
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "wrong view binded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_4
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mPermissionImgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmPdContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mgetMicroPhoneImage(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)I

    move-result v0

    if-le p2, v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object v2, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v5, v5, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    .line 237
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getmUsageBarWidth(I)I

    move-result v5

    .line 236
    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->setAnimation(Landroid/view/View;II)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fputmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    goto :goto_3

    .line 240
    :cond_5
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v2, v2, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getmUsageBarWidth(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    :goto_3
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$plurals;->ps_apps:I

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v5, v5, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 243
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    .line 242
    invoke-virtual {v2, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 222
    :cond_6
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mPermissionImgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmPdContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$mgetCameraImage(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fgetmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)I

    move-result v0

    if-le p2, v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object v2, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v5, v5, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    .line 225
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getmUsageBarWidth(I)I

    move-result v5

    .line 224
    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->setAnimation(Landroid/view/View;II)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->-$$Nest$fputmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V

    goto :goto_4

    .line 228
    :cond_7
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v2, v2, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->getmUsageBarWidth(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    :goto_4
    iget-object v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;->mUsageCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$plurals;->ps_apps:I

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget v5, v5, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    .line 230
    invoke-virtual {v2, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$1;-><init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 199
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;->mRes:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 200
    new-instance p2, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;Landroid/view/View;)V

    return-object p2
.end method
