.class public final synthetic Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->$r8$lambda$J4XxqnIbWDLeFXC5A2o7uVF1_0s(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    sget-object v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sVirtualKeyboardSettingsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
