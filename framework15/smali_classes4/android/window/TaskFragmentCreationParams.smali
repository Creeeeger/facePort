.class public final Landroid/window/TaskFragmentCreationParams;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAllowTransitionWhenEmpty:Z

.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialRelativeBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final blacklist mOverrideOrientation:I

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private final blacklist mPairedActivityToken:Landroid/os/IBinder;

.field private final blacklist mPairedPrimaryFragmentToken:Landroid/os/IBinder;

.field private final blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TaskFragmentCreationParams$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentCreationParams$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    sget-object v0, Landroid/window/TaskFragmentOrganizerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentOrganizerToken;

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentCreationParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pairedPrimaryFragmentToken and pairedActivityToken should not be set at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p5, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    iput-object p6, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    iput-object p7, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    iput-boolean p8, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    iput p9, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZILandroid/window/TaskFragmentCreationParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowTransitionWhenEmpty()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    return v0
.end method

.method public blacklist getFragmentToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInitialRelativeBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getOrganizer()Landroid/window/TaskFragmentOrganizerToken;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist getOverrideOrientation()I
    .locals 1

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    return v0
.end method

.method public blacklist getOwnerToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPairedActivityToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPairedPrimaryFragmentToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentCreationParams{ organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ownerToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialRelativeBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pairedFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pairedActivityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " allowTransitionWhenEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " overrideOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizerToken;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
