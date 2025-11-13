.class public abstract Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final optionNames:Landroidx/lifecycle/MutableLiveData;

.field public final selectedOptionName:Landroidx/lifecycle/MutableLiveData;

.field public final showChooser:Landroidx/lifecycle/MutableLiveData;

.field public final title:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->optionNames:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->showChooser:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public getOptionNames()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->optionNames:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseSingleChoiceViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public abstract onClick()V
.end method

.method public abstract onItemSelected(I)V
.end method
