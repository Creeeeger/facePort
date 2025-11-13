.class Lcom/samsung/android/settings/share/structure/ShareComponent$1;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/structure/ShareComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/settings/share/structure/ShareComponent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/settings/share/structure/ShareComponent;
    .locals 0

    .line 124
    new-instance p0, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/settings/share/structure/ShareComponent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/settings/share/structure/ShareComponent;
    .locals 0

    .line 129
    new-array p0, p1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent$1;->newArray(I)[Lcom/samsung/android/settings/share/structure/ShareComponent;

    move-result-object p0

    return-object p0
.end method
