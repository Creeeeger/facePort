.class public final Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDisplay(Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/SemWifiDisplay;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
