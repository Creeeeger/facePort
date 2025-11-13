.class public Landroid/credentials/selection/BaseDialogResult;
.super Ljava/lang/Object;
.source "BaseDialogResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/BaseDialogResult$ResultCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/BaseDialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_BASE_RESULT:Ljava/lang/String; = "android.credentials.selection.extra.BASE_RESULT"

.field public static final blacklist RESULT_CODE_CANCELED_AND_LAUNCHED_SETTINGS:I = 0x1

.field public static final blacklist RESULT_CODE_DATA_PARSING_FAILURE:I = 0x3

.field public static final blacklist RESULT_CODE_DIALOG_COMPLETE_WITH_SELECTION:I = 0x2

.field public static final blacklist RESULT_CODE_DIALOG_USER_CANCELED:I


# instance fields
.field private final blacklist mRequestToken:Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/BaseDialogResult$1;

    invoke-direct {v0}, Landroid/credentials/selection/BaseDialogResult$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/BaseDialogResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    return-void
.end method

.method public static blacklist addToBundle(Landroid/credentials/selection/BaseDialogResult;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.credentials.selection.extra.BASE_RESULT"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static blacklist fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/BaseDialogResult;
    .locals 2

    const-string v0, "android.credentials.selection.extra.BASE_RESULT"

    const-class v1, Landroid/credentials/selection/BaseDialogResult;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/BaseDialogResult;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRequestToken()Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
