.class public final Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIsFoldedCallback:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;

.field public final mLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mIsFoldedCallback:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "callback"

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mIsFoldedCallback:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel$$ExternalSyntheticLambda0;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
