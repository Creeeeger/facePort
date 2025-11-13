.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;
.super Landroidx/preference/Preference;
.source "MobileWIPSExceptionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWIPSPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;Landroid/content/Context;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    .line 272
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 273
    sget p1, Lcom/android/settings/R$layout;->wifi_wips_exception_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 279
    sget v0, Lcom/android/settings/R$id;->wifi_ap_add_or_delete_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 280
    sget v1, Lcom/android/settings/R$id;->button_img:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 282
    sget v2, Lcom/android/settings/R$drawable;->sec_display_ic_minus_mtrl:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
