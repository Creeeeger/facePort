.class public final Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEntries:[Ljava/lang/CharSequence;

.field public mEntryValues:[Ljava/lang/CharSequence;

.field public mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    return-void
.end method
