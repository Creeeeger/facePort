.class public Lcom/samsung/android/settings/share/SelectAppViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SelectAppViewModel.java"


# instance fields
.field public final isDraggingLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurStateLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/samsung/android/settings/share/SelectAppUiState;",
            ">;"
        }
    .end annotation
.end field

.field public modifiedLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mCurStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v1, Lcom/samsung/android/settings/share/SelectAppViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/share/SelectAppViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->isDraggingLiveData:Landroidx/lifecycle/LiveData;

    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->isDraggingLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Lcom/samsung/android/settings/share/SelectAppUiState;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mCurStateLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
