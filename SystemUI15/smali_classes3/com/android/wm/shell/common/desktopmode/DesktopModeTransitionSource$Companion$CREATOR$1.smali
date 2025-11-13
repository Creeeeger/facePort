.class public final Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->valueOf(Ljava/lang/String;)Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->UNKNOWN:Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    :cond_1
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    return-object p0
.end method
