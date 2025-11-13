.class public final Lcom/android/internal/compat/OverrideAllowedState;
.super Ljava/lang/Object;
.source "OverrideAllowedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/OverrideAllowedState$State;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/OverrideAllowedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFERRED_VERIFICATION:I = 0x4

.field public static final blacklist DISABLED_NON_TARGET_SDK:I = 0x2

.field public static final blacklist DISABLED_NOT_DEBUGGABLE:I = 0x1

.field public static final blacklist DISABLED_TARGET_SDK_TOO_HIGH:I = 0x3

.field public static final blacklist LOGGING_ONLY_CHANGE:I = 0x5

.field public static final blacklist PLATFORM_TOO_OLD:I = 0x6


# instance fields
.field public final blacklist appTargetSdk:I

.field public final blacklist changeIdTargetSdk:I

.field public final blacklist state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState$1;

    invoke-direct {v0}, Lcom/android/internal/compat/OverrideAllowedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/OverrideAllowedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iput p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iput p3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/OverrideAllowedState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist stateName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "PLATFORM_TOO_OLD"

    return-object v0

    :pswitch_1
    const-string v0, "LOGGING_ONLY_CHANGE"

    return-object v0

    :pswitch_2
    const-string v0, "DEFERRED_VERIFICATION"

    return-object v0

    :pswitch_3
    const-string v0, "DISABLED_TARGET_SDK_TOO_HIGH"

    return-object v0

    :pswitch_4
    const-string v0, "DISABLED_NON_TARGET_SDK"

    return-object v0

    :pswitch_5
    const-string v0, "DISABLED_NOT_DEBUGGABLE"

    return-object v0

    :pswitch_6
    const-string v0, "ALLOWED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforce(JLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p3, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot override %1$d for %2$s because the change\'s targetSdk threshold (%3$d) is above the platform sdk."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot override %1$d because it is marked as a logging-only change."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot override %1$d for %2$s because the app\'s targetSdk (%3$d) is above the change\'s targetSdk threshold (%4$d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override a default enabled/disabled change on a user build."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override a change on a non-debuggable app and user build."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/internal/compat/OverrideAllowedState;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/internal/compat/OverrideAllowedState;

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverrideAllowedState(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/compat/OverrideAllowedState;->stateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; appTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; changeIdTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
