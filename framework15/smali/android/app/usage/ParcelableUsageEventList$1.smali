.class Landroid/app/usage/ParcelableUsageEventList$1;
.super Landroid/os/Binder;
.source "ParcelableUsageEventList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/usage/ParcelableUsageEventList;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/usage/ParcelableUsageEventList;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I


# direct methods
.method constructor blacklist <init>(Landroid/app/usage/ParcelableUsageEventList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    iput p2, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    iput p3, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v1}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    if-ge v1, v4, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v4}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    iget-object v5, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    iget v6, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$callFlags:I

    invoke-static {v5, v4, p3, v6}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$mwriteEventToParcel(Landroid/app/usage/ParcelableUsageEventList;Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    if-ge v1, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v4, v2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    nop

    return v0

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v3, v2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to transfer null list, did transfer finish?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
