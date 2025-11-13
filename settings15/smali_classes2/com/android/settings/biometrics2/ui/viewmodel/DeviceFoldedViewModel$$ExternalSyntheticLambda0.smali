.class public final synthetic Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    return-void
.end method


# virtual methods
.method public final onFoldUpdated(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFoldUpdated= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceFoldedViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
