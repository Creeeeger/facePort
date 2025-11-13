.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    iget-object p1, p1, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$setClickListener$2;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    :goto_0
    return-void
.end method
