.class public Lcom/samsung/android/settings/actions/LaunchPayload;
.super Ljava/lang/Object;
.source "LaunchPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/actions/LaunchPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/samsung/android/settings/actions/LaunchPayload$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/actions/LaunchPayload$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/actions/LaunchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/samsung/android/settings/actions/LaunchPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/settings/actions/LaunchPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/settings/actions/LaunchPayload-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/LaunchPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/settings/actions/LaunchPayload;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
