.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CeWeeeMarksFragment.java"


# instance fields
.field private final BUTTON_MAX_WIDTH_RATIO:D

.field private final BUTTON_MIN_WIDTH_RATIO:D

.field private final LAYOUT_BOTTOM_MARGIN_RATIO:D

.field private mContext:Landroid/content/Context;

.field private mDescView:Landroid/widget/LinearLayout;

.field private mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-wide v0, 0x3fe3851eb851eb85L    # 0.61

    .line 42
    iput-wide v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->BUTTON_MIN_WIDTH_RATIO:D

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->BUTTON_MAX_WIDTH_RATIO:D

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 45
    iput-wide v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->LAYOUT_BOTTOM_MARGIN_RATIO:D

    return-void
.end method

.method private initDescriptionViewLayout()V
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mDescView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 102
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 103
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    int-to-double v4, v2

    const-wide v6, 0x3fe3851eb851eb85L    # 0.61

    mul-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 104
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 107
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 111
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mDescView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->initDescriptionViewLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 61
    sget p2, Lcom/android/settings/R$layout;->sec_ce_weee_marks:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 64
    sget p2, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0xf

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;->supportRegulatoryInformation()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    sget p2, Lcom/android/settings/R$id;->ce_and_weee_marks_additional_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mDescView:Landroid/widget/LinearLayout;

    .line 76
    sget p2, Lcom/android/settings/R$id;->regulatory_information_link_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->initDescriptionViewLayout()V

    :cond_1
    return-object p1
.end method
