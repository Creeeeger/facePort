.class public final Landroid/credentials/selection/UserSelectionDialogResult;
.super Landroid/credentials/selection/BaseDialogResult;
.source "UserSelectionDialogResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/UserSelectionDialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_USER_SELECTION_RESULT:Ljava/lang/String; = "android.credentials.selection.extra.USER_SELECTION_RESULT"


# instance fields
.field private final blacklist mEntryKey:Ljava/lang/String;

.field private final blacklist mEntrySubkey:Ljava/lang/String;

.field private final blacklist mProviderId:Ljava/lang/String;

.field private blacklist mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/UserSelectionDialogResult$1;

    invoke-direct {v0}, Landroid/credentials/selection/UserSelectionDialogResult$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/UserSelectionDialogResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/IBinder;)V

    iput-object p2, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    iput-object p3, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    iput-object p4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/IBinder;)V

    iput-object p2, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    iput-object p3, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    iput-object p4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    iput-object p5, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    sget-object v3, Landroid/credentials/selection/ProviderPendingIntentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/selection/ProviderPendingIntentResponse;

    iput-object v3, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/UserSelectionDialogResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/UserSelectionDialogResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist addToBundle(Landroid/credentials/selection/UserSelectionDialogResult;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.credentials.selection.extra.USER_SELECTION_RESULT"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static blacklist fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;
    .locals 2

    const-string v0, "android.credentials.selection.extra.USER_SELECTION_RESULT"

    const-class v1, Landroid/credentials/selection/UserSelectionDialogResult;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/UserSelectionDialogResult;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEntryKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEntrySubkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/credentials/selection/BaseDialogResult;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
