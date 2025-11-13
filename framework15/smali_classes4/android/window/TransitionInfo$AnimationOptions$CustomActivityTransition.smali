.class public final Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo$AnimationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomActivityTransition"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCustomBackgroundColor:I

.field private blacklist mCustomEnterResId:I

.field private blacklist mCustomExitResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    return-void
.end method


# virtual methods
.method public blacklist addCustomActivityTransition(III)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    iput p2, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    iput p3, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    return v0
.end method

.method public blacklist getCustomEnterResId()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    return v0
.end method

.method public blacklist getCustomExitResId()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
