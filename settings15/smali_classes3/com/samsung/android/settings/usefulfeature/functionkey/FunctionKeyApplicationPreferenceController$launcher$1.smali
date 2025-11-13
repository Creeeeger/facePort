.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/activity/result/ActivityResult;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->onActivityResult(ILandroid/content/Intent;)Z

    return-void
.end method

.method public onGearClick()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController$launcher$1;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyApplicationPreferenceController;->launch()V

    return-void
.end method
