.class public final synthetic Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/String;)V

    const-string p2, "font_style_key"

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object p2, p2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/String;)V

    const-string p1, "font_package_name_key"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent_params"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget p1, Lcom/samsung/android/settings/display/bixbyroutines/FontStyleRoutineActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
