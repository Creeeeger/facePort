.class public Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field public radioButtonOff:Landroid/widget/RadioButton;

.field public radioButtonOn:Landroid/widget/RadioButton;

.field public seekBar:Landroidx/appcompat/widget/SeslSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildContentView()Landroid/view/View;
    .locals 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d05c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v3, "switch"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const v4, 0x7f0a0c35

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a0c32

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a0c33

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    const v6, 0x7f0a0c30

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOff:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOff:Landroid/widget/RadioButton;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const v2, 0x7f0a08ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v4, 0x7f141245

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    const v2, 0x7f0a0cb8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0d90

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "intensity"

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->getMaximumReduceBrightColorsStrength(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->getMinimumReduceBrightColorsStrength(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    :cond_2
    return-object v0
.end method

.method public final getTitleResId()I
    .locals 0

    const p0, 0x7f141e52

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "switch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "intensity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOff:Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOff:Landroid/widget/RadioButton;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "switch"

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const-string v1, "intensity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendParameterValues()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->routineActionDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "switch"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "intensity"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1
    return-object v0
.end method

.method public final setEnableSeekBarArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->routineActionDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a08ac

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;->routineActionDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f0a0cb8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void
.end method
