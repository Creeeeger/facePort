.class public Lcom/samsung/android/desktopmode/SemDesktopModeState;
.super Ljava/lang/Object;
.source "SemDesktopModeState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeState$DisplayType;,
        Lcom/samsung/android/desktopmode/SemDesktopModeState$State;,
        Lcom/samsung/android/desktopmode/SemDesktopModeState$Enabled;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLED:I = 0x2

.field public static final whitelist DISABLING:I = 0x1

.field public static final whitelist DISPLAY_TYPE_DUAL:I = 0x66

.field public static final whitelist DISPLAY_TYPE_NONE:I = 0x0

.field public static final whitelist DISPLAY_TYPE_STANDALONE:I = 0x65

.field public static final whitelist ENABLED:I = 0x4

.field public static final whitelist ENABLING:I = 0x3

.field public static final whitelist STATE_BEFORE_CONFIG_CHANGE:I = 0x1e

.field public static final whitelist STATE_CONFIG_CHANGE_FINISHED:I = 0x32

.field public static final whitelist STATE_CONFIG_CHANGE_STARTED:I = 0x28

.field public static final whitelist STATE_LOADING_SCREEN_SHOWN:I = 0x14

.field public static final whitelist STATE_UNDEFINED:I = 0x0

.field public static final whitelist STATE_WELCOME_DIALOG_SHOWN:I = 0xa


# instance fields
.field private blacklist displayType:I

.field public whitelist enabled:I

.field public whitelist state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public static blacklist displayTypeToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "DISPLAY_TYPE_DUAL"

    return-object v0

    :sswitch_1
    const-string v0, "DISPLAY_TYPE_STANDALONE"

    return-object v0

    :sswitch_2
    const-string v0, "DISPLAY_TYPE_NONE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist enabledToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ENABLED"

    return-object v0

    :pswitch_1
    const-string v0, "ENABLING"

    return-object v0

    :pswitch_2
    const-string v0, "DISABLED"

    return-object v0

    :pswitch_3
    const-string v0, "DISABLING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "STATE_CONFIG_CHANGE_FINISHED"

    return-object v0

    :sswitch_1
    const-string v0, "STATE_CONFIG_CHANGE_STARTED"

    return-object v0

    :sswitch_2
    const-string v0, "STATE_BEFORE_CONFIG_CHANGE"

    return-object v0

    :sswitch_3
    const-string v0, "STATE_LOADING_SCREEN_SHOWN"

    return-object v0

    :sswitch_4
    const-string v0, "STATE_WELCOME_DIALOG_SHOWN"

    return-object v0

    :sswitch_5
    const-string v0, "STATE_UNDEFINED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x1e -> :sswitch_2
        0x28 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist compareTo(II)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist compareTo(III)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iget v3, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDisplayType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return v0
.end method

.method public whitelist getEnabled()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    return v0
.end method

.method public whitelist getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setDisplayType(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown displayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return-void
.end method

.method public whitelist setEnabled(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    return-void
.end method

.method public whitelist setState(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemDesktopModeState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabledToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-static {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iput p2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iput p3, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
