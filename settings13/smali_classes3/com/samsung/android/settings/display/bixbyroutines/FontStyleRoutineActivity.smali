.class public Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FontStyleRoutineActivity.java"


# instance fields
.field private final PADDING_BOTTOM:I

.field private final PADDING_LEFT:I

.field private final PADDING_TOP:I

.field private final TEXT_SIZE:F

.field private current:I

.field private density:F

.field private fontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field private radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public static synthetic $r8$lambda$28ZIxTDpxy4FGDnnXYMgZVRQzK8(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->lambda$showFontStyleRoutineDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5iVQcjE5csCdOmALnIoNl88QXQ(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->lambda$makeButton$3(Landroid/widget/RadioButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CENj7XGhF9emsPtWBhOBOVs2Q2Q(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->lambda$showFontStyleRoutineDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMjFoiblcR_RfkxZSXtfOpSz6DE(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->lambda$showFontStyleRoutineDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/high16 v0, 0x41900000    # 18.0f

    .line 29
    iput v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->TEXT_SIZE:F

    const/16 v0, 0x12

    .line 30
    iput v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->PADDING_LEFT:I

    const/16 v0, 0xe

    .line 31
    iput v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->PADDING_TOP:I

    .line 32
    iput v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->PADDING_BOTTOM:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->fontList:Ljava/util/List;

    return-void
.end method

.method private doToPx(I)I
    .locals 0

    int-to-float p1, p1

    .line 113
    iget p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initFontList()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->fontList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->fontList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initRadioGroup(Landroid/view/View;)V
    .locals 2

    .line 85
    sget v0, Lcom/android/settings/R$id;->config_font_radio_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->radioGroup:Landroid/widget/RadioGroup;

    const/4 p1, 0x0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->fontList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->radioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->fontList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->makeButton(ILjava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeButton$3(Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->current:I

    return-void
.end method

.method private synthetic lambda$showFontStyleRoutineDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->saveParamsAndSendResult()V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showFontStyleRoutineDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showFontStyleRoutineDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private makeButton(ILjava/lang/String;)Landroid/widget/RadioButton;
    .locals 5

    .line 92
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x12

    .line 97
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->doToPx(I)I

    move-result v0

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->doToPx(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->doToPx(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/widget/RadioButton;->setPadding(IIII)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 99
    invoke-virtual {v1}, Landroid/widget/RadioButton;->setSingleLine()V

    .line 100
    new-instance v0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/RadioButton;)V

    .line 105
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 106
    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "original_font_style_key"

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    :cond_0
    return-object v1
.end method

.method private saveParamsAndSendResult()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->radioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->current:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "font_style_key"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->current:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "font_package_name_key"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 121
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    return-void
.end method

.method private showFontStyleRoutineDialog()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->font_style_routine_activity_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->initRadioGroup(Landroid/view/View;)V

    .line 70
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    sget v2, Lcom/android/settings/R$string;->sec_font_preview_sylte_subtitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->done:I

    new-instance v3, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;)V

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->cancel:I

    new-instance v3, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;)V

    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->density:F

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->initFontList()V

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->showFontStyleRoutineDialog()V

    return-void
.end method
