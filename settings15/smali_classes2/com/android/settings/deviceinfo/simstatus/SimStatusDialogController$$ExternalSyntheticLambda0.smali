.class public final synthetic Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$SimStatusDialogInfo;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$SimStatusDialogInfo;->signalStrength:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sget v4, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_LABEL_ID:I

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v5, v4, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setSettingVisibility(IZ)V

    sget v4, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->SIGNAL_STRENGTH_VALUE_ID:I

    invoke-virtual {v5, v4, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setSettingVisibility(IZ)V

    invoke-virtual {v5, v4, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$SimStatusDialogInfo;->imsRegistered:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->IMS_REGISTRATION_STATE_LABEL_ID:I

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setSettingVisibility(IZ)V

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->IMS_REGISTRATION_STATE_VALUE_ID:I

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setSettingVisibility(IZ)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f141203

    goto :goto_1

    :cond_2
    const p1, 0x7f141202

    :goto_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
