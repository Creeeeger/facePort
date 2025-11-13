.class public abstract synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_RIGHT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_LEFT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
