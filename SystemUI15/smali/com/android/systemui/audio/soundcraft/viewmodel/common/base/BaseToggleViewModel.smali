.class public abstract Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Landroidx/lifecycle/MutableLiveData;

.field public final isSelected:Landroidx/lifecycle/MutableLiveData;

.field public final name:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public abstract onClick()V
.end method
