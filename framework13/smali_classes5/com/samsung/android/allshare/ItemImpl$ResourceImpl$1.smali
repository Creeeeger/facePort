.class Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;
.super Ljava/lang/Object;
.source "ItemImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    .line 489
    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;->this$1:Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 492
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    iget-object v1, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;->this$1:Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    iget-object v1, v1, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->this$0:Lcom/samsung/android/allshare/ItemImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;-><init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Parcel;Lcom/samsung/android/allshare/ItemImpl$ResourceImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 489
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;
    .locals 1
    .param p1, "size"    # I

    .line 497
    new-array v0, p1, [Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 489
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;->newArray(I)[Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    move-result-object p1

    return-object p1
.end method
