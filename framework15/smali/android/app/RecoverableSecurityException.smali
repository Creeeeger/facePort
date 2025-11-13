.class public final Landroid/app/RecoverableSecurityException;
.super Ljava/lang/SecurityException;
.source "RecoverableSecurityException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RecoverableSecurityException$LocalDialog;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RecoverableSecurityException;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverableSecurityException"


# instance fields
.field private final greylist-max-o mUserAction:Landroid/app/RemoteAction;

.field private final greylist-max-o mUserMessage:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUserAction(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;
    .locals 0

    iget-object p0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserMessage(Landroid/app/RecoverableSecurityException;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/RecoverableSecurityException$1;

    invoke-direct {v0}, Landroid/app/RecoverableSecurityException$1;-><init>()V

    sput-object v0, Landroid/app/RecoverableSecurityException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/RecoverableSecurityException;-><init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserAction()Landroid/app/RemoteAction;
    .locals 1

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method public whitelist getUserMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o showAsDialog(Landroid/app/Activity;)V
    .locals 6

    new-instance v0, Landroid/app/RecoverableSecurityException$LocalDialog;

    invoke-direct {v0}, Landroid/app/RecoverableSecurityException$LocalDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "RecoverableSecurityException"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/app/RecoverableSecurityException$LocalDialog;->setArguments(Landroid/os/Bundle;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecoverableSecurityException_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v4, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public greylist-max-o showAsNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10805a6

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "err"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const-string v4, "RecoverableSecurityException"

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, p1, p2}, Landroid/app/RemoteAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
