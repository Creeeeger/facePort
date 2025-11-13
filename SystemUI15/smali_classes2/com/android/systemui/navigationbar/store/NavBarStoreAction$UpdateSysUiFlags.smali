.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/NavBarStoreAction;


# instance fields
.field public final action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v1, v0

    const v25, 0x7fffff

    const/16 v26, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

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

    invoke-direct/range {v1 .. v26}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateSysUiFlags(action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
