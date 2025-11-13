.class public abstract synthetic Lcom/android/systemui/volume/view/VolumeSeekBar$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/android/systemui/volume/view/VolumeSeekBar$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
