.class public final synthetic Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dream/DreamPickerController$DreamItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dream/DreamPickerController$DreamItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dream/DreamPickerController$DreamItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dream/DreamPickerController$DreamItem;

    iget-object p1, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->this$0:Lcom/android/settings/dream/DreamPickerController;

    invoke-static {p1}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmBackend(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/dream/DreamPickerController;->access$000(Lcom/android/settings/dream/DreamPickerController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10800000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
