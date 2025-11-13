.class public final synthetic Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->stopProKioskMode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setProKioskState() : Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProKioskManagerWrapper"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SystemController;->goToHome()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
