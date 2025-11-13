.class public final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;->darkIntensity:F

    const v28, 0x7ffeff

    const/16 v29, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v4, v13

    move-object/from16 p1, v0

    move-object v0, v13

    move v13, v2

    invoke-direct/range {v4 .. v29}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
