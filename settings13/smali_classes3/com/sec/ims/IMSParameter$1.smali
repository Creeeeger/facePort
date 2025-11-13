.class Lcom/sec/ims/IMSParameter$1;
.super Ljava/lang/Object;
.source "IMSParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/IMSParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/IMSParameter;
    .locals 0

    .line 493
    new-instance p0, Lcom/sec/ims/IMSParameter;

    invoke-direct {p0, p1}, Lcom/sec/ims/IMSParameter;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 490
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSParameter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/IMSParameter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/IMSParameter;
    .locals 0

    .line 498
    new-array p0, p1, [Lcom/sec/ims/IMSParameter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 490
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSParameter$1;->newArray(I)[Lcom/sec/ims/IMSParameter;

    move-result-object p0

    return-object p0
.end method
