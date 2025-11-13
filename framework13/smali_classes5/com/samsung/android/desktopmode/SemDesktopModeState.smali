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

    .line 369
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    .line 182
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "enabled"    # I
    .param p2, "state"    # I

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_0
    const/16 v0, 0x65

    .line 199
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0
    .param p1, "enabled"    # I
    .param p2, "state"    # I
    .param p3, "displayType"    # I

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    .line 209
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->readFromParcel(Landroid/os/Parcel;)V

    .line 386
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3
    .param p1, "desktopModeState"    # Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    .line 190
    return-void
.end method

.method public static blacklist displayTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 164
    sparse-switch p0, :sswitch_data_0

    .line 172
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

    .line 170
    :sswitch_0
    const-string v0, "DISPLAY_TYPE_DUAL"

    return-object v0

    .line 168
    :sswitch_1
    const-string v0, "DISPLAY_TYPE_STANDALONE"

    return-object v0

    .line 166
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
    .param p0, "enabled"    # I

    .line 128
    packed-switch p0, :pswitch_data_0

    .line 138
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

    .line 136
    :pswitch_0
    const-string v0, "ENABLED"

    return-object v0

    .line 134
    :pswitch_1
    const-string v0, "ENABLING"

    return-object v0

    .line 132
    :pswitch_2
    const-string v0, "DISABLED"

    return-object v0

    .line 130
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
    .param p1, "src"    # Landroid/os/Parcel;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    .line 393
    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 144
    sparse-switch p0, :sswitch_data_0

    .line 158
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

    .line 156
    :sswitch_0
    const-string v0, "STATE_CONFIG_CHANGE_FINISHED"

    return-object v0

    .line 154
    :sswitch_1
    const-string v0, "STATE_CONFIG_CHANGE_STARTED"

    return-object v0

    .line 152
    :sswitch_2
    const-string v0, "STATE_BEFORE_CONFIG_CHANGE"

    return-object v0

    .line 150
    :sswitch_3
    const-string v0, "STATE_LOADING_SCREEN_SHOWN"

    return-object v0

    .line 148
    :sswitch_4
    const-string v0, "STATE_WELCOME_DIALOG_SHOWN"

    return-object v0

    .line 146
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
    .param p1, "enabled"    # I
    .param p2, "state"    # I

    .line 342
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
    .param p1, "enabled"    # I
    .param p2, "state"    # I
    .param p3, "type"    # I

    .line 352
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

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 323
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 324
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 327
    .local v0, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iget v3, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v1

    return v1

    .line 324
    .end local v0    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDisplayType()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return v0
.end method

.method public whitelist getEnabled()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    return v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 333
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setDisplayType(I)V
    .locals 3
    .param p1, "displayType"    # I

    .line 313
    if-eqz p1, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 315
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

    .line 317
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    .line 318
    return-void
.end method

.method public whitelist setEnabled(I)V
    .locals 3
    .param p1, "enabled"    # I

    .line 244
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 246
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

    .line 248
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 249
    return-void
.end method

.method public whitelist setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 281
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

    .line 284
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

    .line 286
    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 287
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 364
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

    .line 365
    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    return-object v0
.end method

.method public blacklist update(III)V
    .locals 0
    .param p1, "enabled"    # I
    .param p2, "state"    # I
    .param p3, "type"    # I

    .line 213
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 214
    iput p2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 215
    iput p3, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    .line 216
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 404
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    return-void
.end method
