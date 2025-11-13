.class public final Landroid/app/ActivityOptions$LaunchCookie;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchCookie"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$LaunchCookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist binder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ActivityOptions$LaunchCookie$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$LaunchCookie$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$LaunchCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0, p1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$LaunchCookie;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/app/ActivityOptions$LaunchCookie;

    invoke-direct {v1, v0}, Landroid/app/ActivityOptions$LaunchCookie;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist writeToParcel(Landroid/app/ActivityOptions$LaunchCookie;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityOptions$LaunchCookie;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/ActivityOptions$LaunchCookie;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/ActivityOptions$LaunchCookie;

    iget-object v2, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
