.class public final Lcom/android/settings/homepage/TopLevelHighlightMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/homepage/TopLevelHighlightMixin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActivityEmbedded:Z

.field public mCurrentKey:Ljava/lang/String;

.field public mDialog:Landroid/content/DialogInterface;

.field public mHiddenKey:Ljava/lang/String;

.field public mPreviousKey:Ljava/lang/String;

.field public mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/TopLevelHighlightMixin$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHighlightPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    return-object p0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
