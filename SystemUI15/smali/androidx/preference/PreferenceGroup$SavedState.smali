.class public final Landroidx/preference/PreferenceGroup$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/preference/PreferenceGroup$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mInitialExpandedChildrenCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/preference/PreferenceGroup$SavedState$1;

    invoke-direct {v0}, Landroidx/preference/PreferenceGroup$SavedState$1;-><init>()V

    sput-object v0, Landroidx/preference/PreferenceGroup$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
