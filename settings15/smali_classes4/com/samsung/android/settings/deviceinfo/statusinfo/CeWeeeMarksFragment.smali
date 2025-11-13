.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDescView:Landroid/widget/LinearLayout;

.field public mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public final initDescriptionViewLayout()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mDescView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    int-to-double v4, v2

    const-wide v6, 0x3fe3851eb851eb85L    # 0.61

    mul-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setMinWidth(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMaxWidth(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mDescView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->initDescriptionViewLayout()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d0857

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0412

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    const-string p3, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual {p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0a02e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mDescView:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0c72

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->mRegulatoryButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/CeWeeeMarksFragment;->initDescriptionViewLayout()V

    :cond_1
    return-object p1
.end method
