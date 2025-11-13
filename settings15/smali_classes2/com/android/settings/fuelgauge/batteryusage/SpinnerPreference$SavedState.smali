.class Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# instance fields
.field public final mSpinnerPosition:I


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;->mSpinnerPosition:I

    return-void
.end method
