.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$1$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
