.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;
.super Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final FONT_WEIGHT_REGULAR:I

.field public final FONT_WEIGHT_SEMIBOLD:I

.field public final buttonDescription:Landroid/widget/TextView;

.field public final editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public final lottieSeparate:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

.field public final lottieSeparateRTL:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

.field public final lottieTogether:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

.field public final newButton:Landroid/widget/RadioButton;

.field public final oldButton:Landroid/widget/RadioButton;

.field public final parent:Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;

.field public final separatorText:Landroid/widget/TextView;

.field public final settingsHelper$delegate:Lkotlin/Lazy;

.field public final togetherText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02ed

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->parent:Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;

    const/16 p1, 0x190

    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->FONT_WEIGHT_REGULAR:I

    const/16 p1, 0x258

    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->FONT_WEIGHT_SEMIBOLD:I

    sget-object p1, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$settingsHelper$2;->INSTANCE:Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$settingsHelper$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->settingsHelper$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const p3, 0x7f0a0970

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130e54

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$1$2;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    xor-int/lit8 p3, p1, 0x1

    const v0, 0x7f0a0e29

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->toUpdateFontTypeface(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->togetherText:Landroid/widget/TextView;

    const v0, 0x7f0a0e28

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->toUpdateFontTypeface(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->separatorText:Landroid/widget/TextView;

    const v0, 0x7f0a0e26

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e27

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initClickListener$1$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a099c

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance p3, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->oldButton:Landroid/widget/RadioButton;

    const p3, 0x7f0a099b

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController$initButton$1$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;Landroid/widget/RadioButton;)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    const p3, 0x7f0a03f4

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->updateText(Landroid/widget/TextView;ZZ)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->buttonDescription:Landroid/widget/TextView;

    const p3, 0x7f0a0971

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0a098b

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0a08b7

    const-string/jumbo v0, "tablet_settings_separate.json"

    invoke-static {p2, p3, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->initLottieAnim(Landroid/view/View;ILjava/lang/String;)Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->lottieSeparate:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    const p3, 0x7f0a08b8

    const-string/jumbo v0, "tablet_settings_separate_rtl.json"

    invoke-static {p2, p3, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->initLottieAnim(Landroid/view/View;ILjava/lang/String;)Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->lottieSeparateRTL:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    const p3, 0x7f0a08b9

    const-string/jumbo v0, "tablet_settings_together.json"

    invoke-static {p2, p3, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->initLottieAnim(Landroid/view/View;ILjava/lang/String;)Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->lottieTogether:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->isReversed(Z)Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->playAnim(ZZ)V

    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->message:Ljava/lang/Integer;

    sget-object p0, Lcom/android/systemui/qs/customize/view/AnimType;->TOGETHER:Lcom/android/systemui/qs/customize/view/AnimType;

    iput-object p0, p2, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;->animType:Lcom/android/systemui/qs/customize/view/AnimType;

    return-void
.end method

.method public static final access$onCheckedChanged(Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;Landroid/widget/RadioButton;Z)V
    .locals 6

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    const-string/jumbo v2, "view separately"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "view all"

    :goto_0
    const-string v3, "QPPS1026"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplit(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->buttonDescription:Landroid/widget/TextView;

    if-nez v1, :cond_4

    move-object v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->updateText(Landroid/widget/TextView;ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->isReversed(Z)Z

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->playAnim(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const v2, 0x7f0a0971

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p2, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a098b

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_6

    move v4, v3

    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->parent:Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;->updateButtonsVisibility(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    if-nez p2, :cond_7

    move-object p2, v0

    :cond_7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->oldButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_9

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_a

    move-object p2, v0

    goto :goto_4

    :cond_a
    move-object p2, p1

    :goto_4
    if-nez p1, :cond_b

    move-object p1, v0

    :cond_b
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->updateColor(Landroid/widget/RadioButton;Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->oldButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_c

    move-object p2, v0

    goto :goto_5

    :cond_c
    move-object p2, p1

    :goto_5
    if-nez p1, :cond_d

    move-object p1, v0

    :cond_d
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->updateColor(Landroid/widget/RadioButton;Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->separatorText:Landroid/widget/TextView;

    if-nez p1, :cond_e

    move-object p1, v0

    :cond_e
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->newButton:Landroid/widget/RadioButton;

    if-nez p2, :cond_f

    move-object p2, v0

    :cond_f
    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->toUpdateFontTypeface(Landroid/widget/TextView;Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->togetherText:Landroid/widget/TextView;

    if-nez p1, :cond_10

    move-object p1, v0

    :cond_10
    iget-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->oldButton:Landroid/widget/RadioButton;

    if-nez p2, :cond_11

    goto :goto_6

    :cond_11
    move-object v0, p2

    :goto_6
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->toUpdateFontTypeface(Landroid/widget/TextView;Z)V

    :goto_7
    return-void
.end method

.method public static initLottieAnim(Landroid/view/View;ILjava/lang/String;)Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    return-object p0
.end method

.method public static updateColor(Landroid/widget/RadioButton;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0605a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0605aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static updateText(Landroid/widget/TextView;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const p1, 0x7f130e51

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f130e50

    goto :goto_0

    :cond_1
    const p1, 0x7f130e58

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public final getSettingsHelper$2()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public final isReversed(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public final playAnim(ZZ)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->lottieSeparateRTL:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->lottieSeparate:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    const/4 v3, 0x4

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->lottieTogether:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    move-object p1, v4

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-nez p0, :cond_1

    move-object p0, v4

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v2, :cond_2

    move-object p0, v4

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v1, :cond_4

    move-object p0, v4

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    if-nez v1, :cond_5

    move-object v1, v4

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_6
    if-eqz p1, :cond_d

    if-nez p0, :cond_7

    move-object p1, v4

    goto :goto_3

    :cond_7
    move-object p1, p0

    :goto_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-nez p0, :cond_8

    move-object p0, v4

    :cond_8
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v1, :cond_9

    move-object p0, v4

    goto :goto_4

    :cond_9
    move-object p0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-nez v1, :cond_a

    move-object v1, v4

    :cond_a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v2, :cond_b

    move-object p0, v4

    goto :goto_5

    :cond_b
    move-object p0, v2

    :goto_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    if-nez v2, :cond_c

    move-object v2, v4

    :cond_c
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_d
    if-nez v2, :cond_e

    move-object p1, v4

    goto :goto_6

    :cond_e
    move-object p1, v2

    :goto_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-nez v2, :cond_f

    move-object v2, v4

    :cond_f
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v1, :cond_10

    move-object p1, v4

    goto :goto_7

    :cond_10
    move-object p1, v1

    :goto_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-nez v1, :cond_11

    move-object v1, v4

    :cond_11
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p0, :cond_12

    move-object p1, v4

    goto :goto_8

    :cond_12
    move-object p1, p0

    :goto_8
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    if-nez p0, :cond_13

    move-object p0, v4

    :cond_13
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    return-void
.end method

.method public final toUpdateFontTypeface(Landroid/widget/TextView;Z)V
    .locals 2

    const-string/jumbo v0, "sec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->FONT_WEIGHT_SEMIBOLD:I

    invoke-static {v0, p0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0605a1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSPanelTypeViewController;->FONT_WEIGHT_REGULAR:I

    invoke-static {v0, p0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0605aa

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
